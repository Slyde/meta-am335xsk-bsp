FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-3.14:"

COMPATIBLE_MACHINE_am335xsk-bsp = "am335xsk-bsp"

SRC_URI += " \
	file://am335x-usb.cfg \
	file://am335x-evmsk.dts \
	"

# re-enable if at least one cfg file
do_configure_append () {

	cp ${S}/../*.dts ${S}/arch/arm/boot/dts/

        for i in ${S}/../*.cfg; do
                echo "Adding ${i} to ${S}/.config"
                cat ${i} >> ${S}/.config
        done

        yes '' | oe_runmake oldconfig
}

