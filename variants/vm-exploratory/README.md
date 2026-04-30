
`sudo crontab -e` content:
```
(00 00 * * * sudo shutdown -h now) >> /home/administrator/.shutdown.log 2>&1
```

On your workstation:
```
uv tool install dcli --python 3.10
```
