echo 'Please take a moment to appreciate the longcat'
sleep 1
echo   '
        /\___/\
       /       \
      |  #    # |
      \     @   |
       \   _|_ /
       /       \______
      / _______ ___   \
      |_____   \   \__/
       |    \__/
       |       |
       |       |
       |       |
       |       |
       |       |
       |       |
       |       |
       |       |
       |       |
       |       |
       |       |
       |       |
       |       |
       |       |
       |       |
       |       |
       /        \
      /   ____   \
      |  /    \  |
      | |      | |
     /  |      |  \
     \__/      \__/ 
'
sleep 1
echo 'Longcat is long'
sleep 1

sudo apt-get install pi-bluetooth
sudo apt-get install bluetooth bluez
sudo apt-get install bluez python-bluez

sudo hciconfig hci0 piscan

echo ' '
echo 'Enter a name for the robot (this will be useful when connecting, so come up with something unique)'
echo 'Name: '
read deviceName

echo So your device name is $deviceName and device address is below:
hcitool dev 

sudo hciconfig hci0 name "$deviceName"

echo ' '
echo 'Setup done! Now running a sample program to test if everything is OK! If not, see the README file'

sleep 1

sudo python /usr/share/doc/python-bluez/examples/simple/rfcomm-server.py
