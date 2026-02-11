Removing old and reinstalling:
```
sudo apt purge '^nvidia.*' dkms
sudo apt install nvidia-driver-580 dkms
sudo update-initramfs -u
sudo update-grub
sudo reboot
```


Configure the production repository:

```
curl -fsSL https://nvidia.github.io/libnvidia-container/gpgkey | sudo gpg --dearmor -o /usr/share/keyrings/nvidia-container-toolkit-keyring.gpg \
  && curl -s -L https://nvidia.github.io/libnvidia-container/stable/deb/nvidia-container-toolkit.list | \
    sed 's#deb https://#deb [signed-by=/usr/share/keyrings/nvidia-container-toolkit-keyring.gpg] https://#g' | \
    sudo tee /etc/apt/sources.list.d/nvidia-container-toolkit.list
```    


Install the toolkit:
```
sudo apt-get update

export NVIDIA_CONTAINER_TOOLKIT_VERSION=1.18.2-1
sudo apt-get install -y \
      nvidia-container-toolkit=${NVIDIA_CONTAINER_TOOLKIT_VERSION} \
      nvidia-container-toolkit-base=${NVIDIA_CONTAINER_TOOLKIT_VERSION} \
      libnvidia-container-tools=${NVIDIA_CONTAINER_TOOLKIT_VERSION} \
      libnvidia-container1=${NVIDIA_CONTAINER_TOOLKIT_VERSION}

```

Configure:
```
sudo nvidia-ctk runtime configure --runtime=docker

sudo systemctl restart docker
```

Test:
```
docker run --rm --runtime=nvidia --gpus all ubuntu nvidia-smi
```

Full guide: https://github.com/oddmario/NVIDIA-Ubuntu-Driver-Guide

# References
https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/latest/install-guide.html
