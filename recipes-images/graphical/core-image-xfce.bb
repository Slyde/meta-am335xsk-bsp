DESCRIPTION = "Image with xfce basic support"

IMAGE_FEATURES += "splash package-management x11-base ssh-server-dropbear hwcodecs"

LICENSE = "MIT"

CONMANPKGS = "connman cpnnman-plugin-ethernet connman-plugin-wifi"


export IMAGE_BASENAME = "core-xfce-image"

IMAGE_INSTALL = "\
    packagegroup-core-boot \
    packagegroup-base-extended \
    packagegroup-xfce-base \
    ${CORE_IMAGE_EXTRA_INSTALL} \
    "

inherit core-image


