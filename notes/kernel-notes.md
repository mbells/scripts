

```shell
# Current version:
uname -r

# What is installed:
dpkg --list | grep linux-image

# See what is available:
ll /boot

```

Set the kernel:
```shell
sudo update-initramfs -c -k 6.14.0-37-generic

# Confirm it exists:
ll /boot

sudo update-grub
sudo reboot

```

See also:
https://askubuntu.com/questions/1563722/ubuntu-24-04-noble-wi-fi-stopped-working-after-kernel-upgrade-to-6-17-0-14-ge
