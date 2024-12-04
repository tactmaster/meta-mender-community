inherit image_types

# It is not possible to specify this using MENDER_IMAGE_BOOTLOADER_FILE/OFFSET,
# instead we use an append to "sdimg" to embed the bootloader
# https://wiki.radxa.com/Rockpi4/dev/u-boot
# using the command:
# rkdeveloptool wl 0x40 idbloader.img
# using rkdeveloptool wl 0x4000 uboot.img


IMAGE_CMD:sdimg:append() {
    outimgname="${IMGDEPLOYDIR}/${IMAGE_NAME}.$suffix"
    dd if=${DEPLOY_DIR_IMAGE}/idbloader.img of=${outimgname} conv=notrunc seek=64
    dd if=${DEPLOY_DIR_IMAGE}/u-boot.itb of=${outimgname} conv=notrunc seek=16384
}
