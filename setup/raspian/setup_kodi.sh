
sudo apt-get install kodi

#sudo addgroup --system input

# Create file
sudo vi /etc/udev/rules.d/99-input.rules
    SUBSYSTEM==input, GROUP=input, MODE=0660
    KERNEL==tty[0-9]*, GROUP=tty, MODE=0660

# Create file
sudo vi /etc/udev/rules.d/10-permissions.rules
    # input
    KERNEL=="mouse*|mice|event*",   MODE="0660", GROUP="input"
    KERNEL=="ts[0-9]*|uinput",     MODE="0660", GROUP="input"
    KERNEL==js[0-9]*,             MODE=0660, GROUP=input
    # tty
    KERNEL==tty[0-9]*,            MODE=0666
    # vchiq
    SUBSYSTEM==vchiq,  GROUP=video, MODE=0660

sudo usermod -a -G audio pi
sudo usermod -a -G video pi
sudo usermod -a -G input pi
sudo usermod -a -G dialout pi
sudo usermod -a -G plugdev pi
sudo usermod -a -G tty pi

# Start from cmmand line
kodi-standalone

# From https://www.raspberrypi.org/forums/viewtopic.php?t=99866


sudo apt-get install libavcodec-extra
