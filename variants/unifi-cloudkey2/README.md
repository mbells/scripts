
Setup:
```
apt-get update
apt-get install rsync
```

Create a backup_to_nas shell script:

/etc/cron.daily/backup_to_nas.sh
```
rsync -qa /etc/unifi-protect/backups/ user@nas-host:/path/to/backup/Unifi/protect/

rsync -qa /srv/unifi/data/backup/autobackup/ user@nas-host:/path/to/backup/Unifi/unifi/
```

You'll need an ssh key on the cloud key and its public key needs to be on the nas.


From https://www.chrissearle.org/2020/02/22/backup-and-restore-of-unifi-cloud-key-gen2-plus/

Note new drives for UCK-g2 are to be formatted in ext4.
The drive that came with it contained these partitions:
1. "swap", linux-swap, 4 GiB
2. "var", ext4, 16 GiB
3. "db", ext4, 32GiB
4. "data", 879.51 32GiB
