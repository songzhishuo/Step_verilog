import sys
import serial
import time         #延时使用
import binascii

from PyQt5.QtWidgets import QApplication, QMainWindow,QSlider
from PyQt5.QtWidgets import QMessageBox
from PyQt5.QtCore import QTimer,QThread
#import Ui_untitled
from Ui_untitled import Ui_MainWindow




# class MyThread(QThread):
#     def __init__(self,parent=None):
#         super(MyThread,self).__init__(parent)
#         self.run()

#     def run(self):
#         #while True:
#         print("hello thread")
#         time.sleep(2) 
           


    # sinOut = pyqtSignal(str)

    # def __init__(self,parent=None):
    #     super(MyThread,self).__init__(parent)
 
    #     self.identity = None
 
    # def setIdentity(self,text):
    #     self.identity = text
 
    # def setVal(self,val):
    #     self.times = int(val)
 
    #     ##执行线程的run方法
    #     self.start()
 
    # def run(self):
    #     while self.times > 0 and self.identity:
    #         ##发射信号
    #         self.sinOut.emit(self.identity+" "+str(self.times))
    #         self.times -= 1

def mTimer_ms(cnt) :
    time.sleep(cnt/1000) 

music = [6,7,8,9,
        10,0,13,12,
        10,0,13,0,
        10,9,8,14,
        6,7,8,9,
        10,0,9,8,
        7,6,7,8,
        7,6,12,7,
        #第二zou
        6,7,8,9,
        10,0,13,12,
        10,0,13,0,
        10,9,8,14,
        6,7,8,9,
        10,0,9,8,
        7,0,8,0,
        2,0,10,0,
        12,13,10,9,
        10,0,9,10,
        12,13,10,9,
        10,0,9,10,
        9,8,7,5,

        6,0,5,6,
        7,8,9,10,

        6,0,#10,12,
        22 ###停止

        ]
delay_time = [200,10,200]



class MainWindow(QMainWindow, Ui_MainWindow):
    
    def __init__(self, parent=None):
        super(MainWindow, self).__init__(parent)
        self.setupUi(self)
        
        self.pB_connect.clicked.connect(self.display)
        self.pB_play.clicked.connect(self.play_music)
        self.sB_Temp_threshold.valueChanged.connect(self.temp_threshold)

        self.serial = serial.Serial()     #初始化串口
        self.lE_com.setText("COM2")
        self.cB_baud.setCurrentText("115200")
        self.sB_Temp_threshold.setValue(40)

        self.old_temp_val = 0
        self.cnt = 0                        #数据发送计数器        
        self.connect_flag = False           #串口连接成功标志
        self.temp_threshold_val = self.sB_Temp_threshold.value()   #温度报警阈值   

        # 定时器接收数据
        self.timer = QTimer(self)
        self.timer.timeout.connect(self.data_receive)

        self.vS_temp.setTickPosition(QSlider.TicksBothSides)
        self.vS_temp.setEnabled(False)

        # # 创建线程
        # self.thread = MyThread()

    def display(self):
        if self.connect_flag == False :                             #建立连接                
            self.label_1.setText("hello cnt:%d" %self.cnt)
            self.cnt = self.cnt + 1
            

            self.serial.baudrate = int(self.cB_baud.currentText())  #波特率 
            self.serial.port = self.lE_com.text()                   #获取端口号             
            self.serial.stopbits = 1                                #停止位1
            self.serial.bytesize = 8
            self.serial.parity = 'N'                                #无校验
            try:            
                self.serial.open()
                self.connect_flag = True
                self.pB_connect.setText("Disconnect")
                self.timer.start(2)
            except:
                QMessageBox.critical(self,"Port error","串口打开失败")
                return None
        elif self.connect_flag == True :                            #断开连接
            self.serial.close()
            self.connect_flag = False
            self.pB_connect.setText ("Connect")
            self.timer.stop()
            

        print("port test:" + self.serial.port)
        #self.serial.open()
    def play_music(self):
        if  self.connect_flag == True :                               
            cnt = 0
            while cnt < len(music):
                self.serial.write(bytes.fromhex("%.2x" % music[cnt]))
                mTimer_ms(200)
                cnt  = cnt + 1
        else    :
            QMessageBox.critical(self,"Port error","串口未打开")

    def temp_threshold(self):           #温度报警阈值设置
        self.temp_threshold_val = self.sB_Temp_threshold.value()
        #print("当前值为：",self.temp_threshold_val)
        print("temp threshold val[%d]" % self.temp_threshold_val)

    # 接收数据
    def data_receive(self):
        try:
            num = self.serial.inWaiting()   #监测接收字符 inWaitting返回接收字符串的长度值
            
        except:
            self.port_close()
            return None
        
        if num > 0:
            print("read num:" + str(num) + "\r\n")
            data = self.serial.read(num)
            num  = len(data)

            data = str(binascii.b2a_hex(data))[2:-1]
            temp_val = int(data,16)
            
            print("old val %d" % self.old_temp_val)

            if self.old_temp_val <= 99 and self.old_temp_val >= 0 :           #温度发送
                self.lb_temp.setText(str(temp_val))
                self.vS_temp.setValue(temp_val)
                
                if self.old_temp_val >= int(self.temp_threshold_val) :        #报警阈值
                    #串口阻塞发送
                    #mTimer_ms(1500)
                    self.play_music()
                    #str_time =  time.asctime( time.localtime(time.time()) ) + "\r\n"
                    #self.serial.write(str_time.encode("gbk"))
                    #self.serial.write(binascii.b2a_hex(0x11))
                    #mTimer_ms(200)  #延时200ms
                    #str_time =  time.asctime( time.localtime(time.time()) ) + "\r\n"
                    #self.serial.write(str_time.encode("gbk"))
                    #a = bytes.fromhex(music[1])
                    #send_data = hex(music[1])
                    #self.serial.write(bytes.fromhex(str(send_data)))
                    
                    # cnt = 0
                    # while cnt < len(music):
                    #     self.serial.write(bytes.fromhex("%.2x" % music[cnt]))
                    #     #mTimer_ms(delay_time[cnt])
                    #     mTimer_ms(200)
                    #     cnt  = cnt + 1
            
                self.old_temp_val = temp_val



if __name__ == '__main__':
    #固定的，PyQt5程序都需要QApplication对象。sys.argv是命令行参数列表，确保程序可以双击运行
    app = QApplication(sys.argv)
    #MainWindow = QMainWindow()
    #ui = Ui_untitled.Ui_MainWindow()
    #ui.setupUi(MainWindow)
    #初始化 
    myWin = MainWindow()
    myWin.show()
    
    #程序运行，sys.exit方法确保程序完整退出。
    sys.exit(app.exec_())
