FILESEXTRAPATHS_prepend := "${THISDIR}/connman:"

SRC_URI += "file://main.conf"

do_install_append() {
        install -d ${D}/etc/connman/
        install -m 0644 ${WORKDIR}/main.conf ${D}/etc/connman/
}

