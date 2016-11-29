########################################
include device/rpi/raspberrypi-common/packages.mk

########################################
include vendor/raspberrypi/firmware/packages.mk

########################################
PRODUCT_PACKAGES += \
    bt_vendor.conf \
    BCM43430A1.hcd \
