# Dolby board-scope wiring.
#
# dolby.mk (inherited in the device product makefile) only covers
# product-scope variables; the VINTF manifest/matrix and sepolicy are board
# variables, so they are collected here. Devices `-include` this after their
# own HIDL manifest/matrix settings so a device's `:=` reset does not drop the
# Dolby entries.

DEVICE_MANIFEST_FILE += \
    device/motorola/sm6150-common/dolby/vendor.dolby.hardware.dms@2.0-service.xml \
    device/motorola/sm6150-common/dolby/vendor.dolby.media.c2.xml
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE += \
    device/motorola/sm6150-common/dolby/dolby_framework_matrix.xml
BOARD_VENDOR_SEPOLICY_DIRS += device/motorola/sm6150-common/dolby/sepolicy/vendor
