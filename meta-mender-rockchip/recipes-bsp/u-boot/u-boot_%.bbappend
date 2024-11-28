

FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"


# Add uboot envirment offset that didn't get by mender autoconfigure
# Will boot but fw_printenv do not work.

SRC_URI += "file://0001-Add-mender-settings.patch    \
"
MENDER_UBOOT_AUTO_CONFIGURE = "1"
MENDER_UBOOT_ENV_STORAGE_DEVICE_OFFSET_1 = "0xa00000"
MENDER_UBOOT_ENV_STORAGE_DEVICE_OFFSET_2 = "0x1400000"