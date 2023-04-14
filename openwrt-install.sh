#!/bin/bash

opkg update
opkg install rclone

cp -a openwrt/linux_rclone_amd64 /bin/rclone
chmod +x /bin/rclone

cp openwrt/mountfs /etc/init.d/
chmod +x /etc/init.d/mountfs
/etc/init.d/mountfs start
/etc/init.d/mountfs enable
