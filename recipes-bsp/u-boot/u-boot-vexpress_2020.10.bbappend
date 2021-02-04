FILESEXTRAPATHS_prepend := "${THISDIR}:"    
SRC_URI += "file://uboot-pds28.patch"
COMPATIBLE_MACHINE = "(vexpress-pds28-qemu)"
