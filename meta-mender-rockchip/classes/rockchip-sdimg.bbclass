inherit image_types

# The Rock Pi 4C boot ROM expects these images at fixed sectors.
IMAGE_CMD:sdimg:append() {
    outimgname="${IMGDEPLOYDIR}/${IMAGE_NAME}.$suffix"
    dd if=${DEPLOY_DIR_IMAGE}/idbloader.img of=${outimgname} conv=notrunc seek=64
    dd if=${DEPLOY_DIR_IMAGE}/u-boot.itb of=${outimgname} conv=notrunc seek=16384
}