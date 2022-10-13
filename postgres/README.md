# Setting backup-pg.sh

Edit backup-pg.sh setting-up the variables

# Install
move backup-pg.sh into /usr/local/bin/backup-pg
```
mv backup-pg.sh  /usr/local/bin/backup-pg
```
# Install as crontab
move backup-pg.sh into /usr/local/bin/backup-pg
```
mv backup-pg.sh  /usr/local/bin/backup-pg
```
as user launch `crontab -e`
```
0 5 * * * /usr/local/bin/backup-pg 2>&1 > /dev/null
```
