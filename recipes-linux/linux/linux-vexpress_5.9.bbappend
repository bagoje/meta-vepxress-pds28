FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
SRC_URI += "file://linux-pds28.patch"
COMPATIBLE_MACHINE = "(vexpress-pds28-qemu)"
