import time
import serial
import sys
#from decoder import decoder



        
ser = serial.Serial(
    #ser.port = "COM9"
    port = "/dev/ttyUSB0",
    baudrate =115200,
    bytesize = serial.EIGHTBITS ,#number of bits per bytesc
    parity = serial.PARITY_NONE, #set parity check: no parity
    stopbits = serial.STOPBITS_ONE #number of stop bits
)
print("Transmission start")
#ser.reset_input_buffer()
byte_n=0  
c=0
tenbits_n=0
word=0
pack=0
n=0
#read = 0b00000000
type_read=False
while True:
    
    if(type_read==False): 

        read = ser.read()
        data = int.from_bytes(read, byteorder=sys.byteorder)	
        byte_n = byte_n + 1
        #data = int.from_bytes(read, byteorder=sys.byteorder)
        if (byte_n==1):   
            first8b= data
            #print("first8b: ", hex(first8b))
        if (byte_n==2):
            second8b= data
            #print("second8b: ", hex(second8b))
            word16b=(second8b<<8) | first8b
            #print("word16: ", hex(word16b))
        if (byte_n==3):
            third8b= data
            #print("third8b: ", hex(third8b))
            word24b=(third8b<<16) | word16b
            #print("word24: ", hex(word24b))
        if (byte_n==4):
            fourth8b= data
            word32b=(fourth8b<<24) | word24b 
            #print("fourth8b: ", hex(fourth8b))
            #print("word32: ", hex(word32b))
            word = word32b       
            type_read=True
            byte_n=0    
            
        
            
    else:
        s=hex(word)
        print(s)
        type_read=False
        data = 0
        archivo = open('test1_lab.txt','a') 
        archivo.write(s)
        archivo.write("\n")
        archivo.close()  
	
