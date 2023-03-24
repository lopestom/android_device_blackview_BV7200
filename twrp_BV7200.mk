#
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit from device
$(call inherit-product, device/blackview/BV7200/device.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := BV7200
PRODUCT_NAME := twrp_BV7200
PRODUCT_BRAND := Blackview
PRODUCT_MODEL := BV7200
PRODUCT_MANUFACTURER := Blackview
PRODUCT_RELEASE_NAME := Blackview BV7200

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=BV7200 \
    PRODUCT_NAME=BV7200_NEU \
    PRIVATE_BUILD_DESC="full_te888_dk_dk035_69_s0-user 12 SP1A.210812.016 1666013144 release-keys"

BUILD_FINGERPRINT := Blackview/BV7200_NEU/BV7200:12/SP1A.210812.016/1666013144:user/release-keys

