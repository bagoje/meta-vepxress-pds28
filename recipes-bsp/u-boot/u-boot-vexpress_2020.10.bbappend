FILESEXTRAPATHS_prepend := "${THISDIR}:"    
SRC_URI += "\ 
	file://uboot-pds28.patch \
	file://boot.cmd \
"

COMPATIBLE_MACHINE = "(vexpress-pds28-qemu)"

do_compile_append() {
	${WORKDIR}/build/tools/mkimage -A arm -T script -C none -n "Boot script" -d "${WORKDIR}/boot.cmd" ${WORKDIR}/boot.scr
}

do_deploy_append() {
	install -d ${DEPLOYDIR}
	install -m 0644 ${WORKDIR}/boot.scr ${DEPLOYDIR}
}

