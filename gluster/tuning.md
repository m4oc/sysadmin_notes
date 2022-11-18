#GlusterFs tuning

gluster volume set glustefs nfs.enable-ino32 on
gluster volume set glustefs nfs.addr-namelookup off
gluster volume set glustefs nfs.disable on
gluster volume set glustefs performance.cache-max-file-size 8MB
gluster volume set glustefs performance.cache-refresh-timeout 20
gluster volume set glustefs performance.cache-size 1024MB
gluster volume set glustefs performance.write-behind-window-size 16MB
gluster volume set glustefs performance.io-thread-count 32

