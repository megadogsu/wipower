ARDUINO_DIR = /usr/share/arduino
ARDUINO_PORT  = /dev/ttyACM0
#BOARD_TAG    = yun
MONITOR_PORT  = /dev/ttyUSB0
ARDUINO_LIBS = Wire/utility SPI Wire SoftwareSerial UTFT_SPI
ARDMK_DIR = /usr/local
ARDMK_PATH = /usr/share/arduino
MONITOR_BAUDRATE = 115200

include /usr/share/arduino/Arduino.mk
host:
	make upload \
	BOARD_TAG = yun \
	ARDUINO_PORT=/dev/ttyACM0 
target:
	make upload \
	BOARD_TAG = uno \
	ARDUINO_PORT=/dev/ttyACM1
