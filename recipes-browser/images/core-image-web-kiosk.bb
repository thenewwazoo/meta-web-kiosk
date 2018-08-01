DESCRIPTION = "A basic image with web browser integrated"

LIC_FILES_CHKSUM = "file://${COREBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3b58 \
                    file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"

IMAGE_FEATURES += "splash package-management ssh-server-openssh x11-base"

PR="r1"

LICENSE = "MIT"

inherit core-image

IMAGE_INSTALL += " packagegroup-x11-browser"
