# How to Disable Transparent Huge Pages (THP)

1. Create service file  /etc/systemd/system/disable-transparent-huge-pages.service

```
[Unit]
Description=Disable Transparent Huge Pages (THP)
DefaultDependencies=no
After=sysinit.target local-fs.target

[Service]
Type=oneshot
ExecStart=/bin/sh -c 'echo never | tee /sys/kernel/mm/transparent_hugepage/enabled > /dev/null'

[Install]
WantedBy=basic.target
```

2. systemctl daemon-reload
3. systemctl enable disable-transparent-huge-pages
4. systemctl start disable-transparent-huge-pages
