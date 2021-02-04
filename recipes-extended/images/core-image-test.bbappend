CORE_IMAGE_EXTRA_INSTALL += "\
		app \
		sqlite3 \
"
FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
LICENCE = "CLOSED"

FILES_${PN} += "/www/cgi-bin/samples"
SAVED_PATH := "${THISDIR}"
SRC_URI += "file://samples"

create_www_dir() {
        mkdir -p ${IMAGE_ROOTFS}/www
        mkdir -p ${IMAGE_ROOTFS}/www/cgi-bin
        cp ${SAVED_PATH}/files/samples ${IMAGE_ROOTFS}/www/cgi-bin
	cp ${SAVED_PATH}/files/httpd.conf ${IMAGE_ROOTFS}/etc
}

IMAGE_PREPROCESS_COMMAND += "create_www_dir;"
