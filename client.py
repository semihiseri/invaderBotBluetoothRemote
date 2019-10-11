from bluetooth import *

devAddress = "" # fill the device address here. 

if devAddress == "":
    print "edit the file and configure the device address!"
    quit()

# Create the client socket
client_socket=BluetoothSocket( RFCOMM )

client_socket.connect((devAddress, 3))

while True:
    try:
        data = str(raw_input())
        client_socket.send(data)
    except:
        break

print "Finished"

client_socket.close()
