setenv bootargs "root=/dev/mmcblk0p2 init=/sbin/init console=ttyAMA0"
fatload mmc 0:1 82000000 /zImage
fatload mmc 0:1 88000000 /vexpress-pds28.dtb
bootz 82000000 - 88000000
