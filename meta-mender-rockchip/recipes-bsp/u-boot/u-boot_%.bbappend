

FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"


# Add uboot envirment offset that didn't get by mender autoconfigure
# Will boot but fw_printenv do not work.

SRC_URI += "file://0001-Add-mender-settings.patch    \
"
