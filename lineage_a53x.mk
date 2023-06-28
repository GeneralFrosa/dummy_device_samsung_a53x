# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from a53x device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := samsung
PRODUCT_DEVICE := a53x
PRODUCT_MANUFACTURER := samsung
PRODUCT_NAME := lineage_a53x
PRODUCT_MODEL := SM-A536B

PRODUCT_GMS_CLIENTID_BASE := android-samsung
TARGET_VENDOR := samsung
TARGET_VENDOR_PRODUCT_NAME := a53x
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="a53xnaxx-user 13 TP1A.220624.014 A536BXXU4BVJG release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := samsung/a53xnaxx/a53x:12/SP1A.210812.016/A536BXXU4BVJG:user/release-keys
