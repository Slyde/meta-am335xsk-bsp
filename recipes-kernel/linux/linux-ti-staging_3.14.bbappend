FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-3.14:"

PRINC := "${@int(PRINC) + 1}"

COMPATIBLE_MACHINE_am335x-bsp = "am335x-bsp"

SRC_URI += "file://am335x-bsp.cfg \
           "

do_configure_append () {
        for i in ${S}/../*.cfg; do
                echo "Adding ${i} to ${S}/.config"
                cat ${i} >> ${S}/.config
        done

        yes '' | oe_runmake oldconfig
}

