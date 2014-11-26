FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-3.14:"

<<<<<<< HEAD
COMPATIBLE_MACHINE_am437xevm = "am437xevm"

SRC_URI += "\
	file://graphic-fb.cfg \
	file://am437x-usb.cfg \
=======
COMPATIBLE_MACHINE_am335xsk-bsp = "am335xsk-bsp"

SRC_URI += " \
	file://am335x-usb.cfg \
	file://am335x-evmsk.dts \
>>>>>>> 953e4096729ebe9c02a07ae5dbd8119c39b50f2a
	"

# re-enable if at least one cfg file
do_configure_append () {

<<<<<<< HEAD
=======
	cp ${S}/../*.dts ${S}/arch/arm/boot/dts/

>>>>>>> 953e4096729ebe9c02a07ae5dbd8119c39b50f2a
        for i in ${S}/../*.cfg; do
                echo "Adding ${i} to ${S}/.config"
                cat ${i} >> ${S}/.config
        done

        yes '' | oe_runmake oldconfig
}

