# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file 'c:\Users\Argon\Desktop\Verilog\python_uart\untitled.ui'
#
# Created by: PyQt5 UI code generator 5.15.2
#
# WARNING: Any manual changes made to this file will be lost when pyuic5 is
# run again.  Do not edit this file unless you know what you are doing.


from PyQt5 import QtCore, QtGui, QtWidgets


class Ui_MainWindow(object):
    def setupUi(self, MainWindow):
        MainWindow.setObjectName("MainWindow")
        MainWindow.resize(466, 296)
        self.centralwidget = QtWidgets.QWidget(MainWindow)
        self.centralwidget.setObjectName("centralwidget")
        self.groupBox = QtWidgets.QGroupBox(self.centralwidget)
        self.groupBox.setGeometry(QtCore.QRect(10, 10, 221, 191))
        self.groupBox.setObjectName("groupBox")
        self.layoutWidget = QtWidgets.QWidget(self.groupBox)
        self.layoutWidget.setGeometry(QtCore.QRect(10, 20, 201, 161))
        self.layoutWidget.setObjectName("layoutWidget")
        self.verticalLayout = QtWidgets.QVBoxLayout(self.layoutWidget)
        self.verticalLayout.setContentsMargins(0, 0, 0, 0)
        self.verticalLayout.setObjectName("verticalLayout")
        self.horizontalLayout = QtWidgets.QHBoxLayout()
        self.horizontalLayout.setObjectName("horizontalLayout")
        self.label_1 = QtWidgets.QLabel(self.layoutWidget)
        self.label_1.setObjectName("label_1")
        self.horizontalLayout.addWidget(self.label_1)
        spacerItem = QtWidgets.QSpacerItem(192, 20, QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Minimum)
        self.horizontalLayout.addItem(spacerItem)
        self.lE_com = QtWidgets.QLineEdit(self.layoutWidget)
        self.lE_com.setFocusPolicy(QtCore.Qt.StrongFocus)
        self.lE_com.setLayoutDirection(QtCore.Qt.LeftToRight)
        self.lE_com.setObjectName("lE_com")
        self.horizontalLayout.addWidget(self.lE_com)
        spacerItem1 = QtWidgets.QSpacerItem(93, 20, QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Minimum)
        self.horizontalLayout.addItem(spacerItem1)
        self.verticalLayout.addLayout(self.horizontalLayout)
        self.horizontalLayout_3 = QtWidgets.QHBoxLayout()
        self.horizontalLayout_3.setObjectName("horizontalLayout_3")
        self.label_4 = QtWidgets.QLabel(self.layoutWidget)
        self.label_4.setObjectName("label_4")
        self.horizontalLayout_3.addWidget(self.label_4)
        spacerItem2 = QtWidgets.QSpacerItem(40, 20, QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Minimum)
        self.horizontalLayout_3.addItem(spacerItem2)
        self.cB_baud = QtWidgets.QComboBox(self.layoutWidget)
        self.cB_baud.setObjectName("cB_baud")
        self.cB_baud.addItem("")
        self.cB_baud.addItem("")
        self.cB_baud.addItem("")
        self.horizontalLayout_3.addWidget(self.cB_baud)
        self.verticalLayout.addLayout(self.horizontalLayout_3)
        self.horizontalLayout_2 = QtWidgets.QHBoxLayout()
        self.horizontalLayout_2.setObjectName("horizontalLayout_2")
        spacerItem3 = QtWidgets.QSpacerItem(40, 20, QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Minimum)
        self.horizontalLayout_2.addItem(spacerItem3)
        self.pB_connect = QtWidgets.QPushButton(self.layoutWidget)
        self.pB_connect.setObjectName("pB_connect")
        self.horizontalLayout_2.addWidget(self.pB_connect)
        self.verticalLayout.addLayout(self.horizontalLayout_2)
        self.vS_temp = QtWidgets.QSlider(self.centralwidget)
        self.vS_temp.setGeometry(QtCore.QRect(300, 40, 20, 151))
        self.vS_temp.setOrientation(QtCore.Qt.Vertical)
        self.vS_temp.setObjectName("vS_temp")
        self.label_2 = QtWidgets.QLabel(self.centralwidget)
        self.label_2.setGeometry(QtCore.QRect(240, 0, 53, 47))
        self.label_2.setObjectName("label_2")
        self.layoutWidget1 = QtWidgets.QWidget(self.centralwidget)
        self.layoutWidget1.setGeometry(QtCore.QRect(250, 80, 38, 17))
        self.layoutWidget1.setObjectName("layoutWidget1")
        self.horizontalLayout_4 = QtWidgets.QHBoxLayout(self.layoutWidget1)
        self.horizontalLayout_4.setContentsMargins(0, 0, 0, 0)
        self.horizontalLayout_4.setObjectName("horizontalLayout_4")
        self.lb_temp = QtWidgets.QLabel(self.layoutWidget1)
        self.lb_temp.setObjectName("lb_temp")
        self.horizontalLayout_4.addWidget(self.lb_temp)
        self.label_5 = QtWidgets.QLabel(self.layoutWidget1)
        self.label_5.setObjectName("label_5")
        self.horizontalLayout_4.addWidget(self.label_5)
        self.pB_play = QtWidgets.QPushButton(self.centralwidget)
        self.pB_play.setGeometry(QtCore.QRect(240, 220, 75, 23))
        self.pB_play.setObjectName("pB_play")
        MainWindow.setCentralWidget(self.centralwidget)
        self.menubar = QtWidgets.QMenuBar(MainWindow)
        self.menubar.setGeometry(QtCore.QRect(0, 0, 466, 22))
        self.menubar.setObjectName("menubar")
        MainWindow.setMenuBar(self.menubar)
        self.statusbar = QtWidgets.QStatusBar(MainWindow)
        self.statusbar.setObjectName("statusbar")
        MainWindow.setStatusBar(self.statusbar)

        self.retranslateUi(MainWindow)
        QtCore.QMetaObject.connectSlotsByName(MainWindow)

    def retranslateUi(self, MainWindow):
        _translate = QtCore.QCoreApplication.translate
        MainWindow.setWindowTitle(_translate("MainWindow", "MainWindow"))
        self.groupBox.setTitle(_translate("MainWindow", "串口配置"))
        self.label_1.setText(_translate("MainWindow", "串口号:"))
        self.lE_com.setText(_translate("MainWindow", "COM1"))
        self.label_4.setText(_translate("MainWindow", "波特率："))
        self.cB_baud.setItemText(0, _translate("MainWindow", "19200"))
        self.cB_baud.setItemText(1, _translate("MainWindow", "9600"))
        self.cB_baud.setItemText(2, _translate("MainWindow", "115200"))
        self.pB_connect.setText(_translate("MainWindow", "Connect"))
        self.label_2.setText(_translate("MainWindow", "温度："))
        self.lb_temp.setText(_translate("MainWindow", "25"))
        self.label_5.setText(_translate("MainWindow", "℃"))
        self.pB_play.setText(_translate("MainWindow", "play"))