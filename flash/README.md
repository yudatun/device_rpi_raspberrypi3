Flash Yudatun Images To Raspberrypi3
========================================

Flash mmcblk0
----------------------------------------

```
$ sudo dd if=/dev/zero of=/dev/mmcblk0 bs=4096 count=4096
$ sudo dd if=MBR.bin of=/dev/mmcblk0 bs=512
$ sudo dd if=rpi-boot.img of=/dev/mmcblk0p1 bs=4096
$ simg2img system.img system.img.ext4
$ sudo dd if=system.img.ext4 of=/dev/mmcblk0p2 bs=4096
$ simg2img userdata.img userdata.img.ext4
$ sudo dd if=userdata.img.ext4 of=/dev/mmcblk0p3 bs=4096
```
