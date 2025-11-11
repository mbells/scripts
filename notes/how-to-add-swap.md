# How to add swap

1. Check current swap status

```
$ swapon --show
NAME      TYPE SIZE USED PRIO
/swap.img file   4G   0B   -2
```

2. Extend the swap file:
```
sudo fallocate -l 30G /swap.img
```

Full instructions if one doesn't already exist:
```
sudo fallocate -l 4G /swapfile
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab
```

3. Veryify active:
```
swapon --show
free -h
```
