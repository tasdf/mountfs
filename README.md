## 使用说明



### OpenWRT

**Default FROM_DIR:** `alist:/`

**MOUNT_DIR:** `/mnt/alist`

#### 1、rclone

```bash
opkg update
opkg install rclone

cp -a openwrt/openwrt_rclone /bin/rclone
chmod +x /bin/rclone
```

#### 2、mount fs

```bash
cp openwrt/mountfs /etc/init.d/
chmod +x /etc/init.d/mountfs
/etc/init.d/mountfs start
/etc/init.d/mountfs enable
```
