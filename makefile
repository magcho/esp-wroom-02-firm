serialPort := /dev/cu.usbserial-AI057CU3

backup-firm:
	esptool.py -p $(serialPort) \
		--chip esp8266 \
		read_flash 0x0000 4194304 ./esp8266-firm-bak.bin
