import os
import serial

rfcommNr = 1

ser = serial.Serial("/dev/rfcomm%s" %rfcommNr)
print "connected"

while True: 
    data = str(raw_input())
    ser.write(data)

print "Finished"

ser.close()
