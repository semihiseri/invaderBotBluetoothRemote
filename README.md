# invaderBotBluetoothRemote
This repo provides remote controlling solution over bluetooth SPP. You can configure raspberries as servers, and controller laptops as clients.

Run relevant setup file on each side and then run the actual scripts

# What to do if you are getting the following error:
Traceback (most recent call last):
  File "/usr/share/doc/python-bluez/examples/simple/rfcomm-server.py", line 20, in <module>
    profiles = [ SERIAL_PORT_PROFILE ], 
  File "/usr/lib/python2.7/dist-packages/bluetooth/bluez.py", line 176, in advertise_service
    raise BluetoothError (str (e))
bluetooth.btcommon.BluetoothError: (2, 'No such file or directory')

Solution:
Follow the steps here:
* open /etc/systemd/system/dbus-org.bluez.service
* add '-C' after 'bluetoothd'
* reboot.

# Original sources:
* https://github.com/EnableTech/raspberry-bluetooth-demo
* https://www.raspberrypi.org/forums/viewtopic.php?f=63&t=133263
