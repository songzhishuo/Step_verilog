import serial
import time         #延时使用
import binascii
 
def mTimer_ms(cnt) :
    time.sleep(cnt/1000)


s = serial.Serial("COM9", 115200)     #初始化串口
 
 
while True:
   
    # Hex_str = bytes.fromhex('10 11 12 34 3f')   #文本转换Hex
    # #=bytes.fromhex('10 11 12 34 3f') 
    # s.write(Hex_str)                            #串口发送 Hex_str()
    # #接收
    # n=s.inWaiting()                             #串口接收
    # if n: 
    #     data= str(binascii.b2a_hex(s.read(n)))[2:-1]          #Hex转换成字符串
    #     print(data)                             #字符串输出
    # time.sleep(1)

    #while True:
    #print("hello")
    # n=s.inWaiting()                             #串口接收
    # #data= str(binascii.b2a_hex(s.read(n)))[2:-1]          #Hex转换成字符串
    # data = str(s.read(n))[2:-1]
    # print(data)                             #字符串输出       
    # time.sleep(1)
    #str_time = time.strptime(page.editTime(), "%Y%m%d%H%M%S")
    str_time =  time.asctime( time.localtime(time.time()) ) + "\r\n"
    s.write(str_time.encode("gbk"))
    mTimer_ms(200)  #延时200ms
    #time.sleep()
 