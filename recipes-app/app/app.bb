
LICENSE = "CLOSED"

FILES_${PN} = "${bindir}/app"
SRC_URI = "file://app.c" 

DEPENDS = "sqlite3" 
RDEPENDS_${PN} = "libgcc"

COMPATIBLE_MACHINE = "(vexpress-pds28-qemu)"

do_compile () {
# You will almost certainly need to add additional arguments here
	${CC} ${WORKDIR}/app.c -o ${WORKDIR}/app ${LDFLAGS} -lsqlite3 -lpthread
}

do_install () {
# NOTE: unable to determine what to put here - there is a Makefile but no
# target named "install", so you will need to define this yourself
	install -d ${D}${bindir}
	install -m 755 ${WORKDIR}/app ${D}${bindir}/app
}
