DESCRIPTION = "Image with xfce desktop and basic multimedia support"

IMAGE_FEATURES += "splash package-management x11-base ssh-server-dropbear hwcodecs"

LICENSE = "MIT"

CONMANPKGS = "connman cpnnman-plugin-ethernet connman-plugin-wifi"

MULTIMEDIA_PKG_INSTALL = "\
    vlc \
    mplayer2 \
    mpg123 \
"

export IMAGE_BASENAME = "core-xfce-image-multimedia"

IMAGE_INSTALL = "\
    packagegroup-core-boot \
    packagegroup-base-extended \
    packagegroup-xfce-base \
    ${CORE_IMAGE_EXTRA_INSTALL} \
    ${MULTIMEDIA_PKG_INSTALL} \
    "

inherit core-image


