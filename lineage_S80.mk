# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from S80 device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := doogee
PRODUCT_DEVICE := S80
PRODUCT_MANUFACTURER := doogee
PRODUCT_NAME := lineage_S80
PRODUCT_MODEL := S80

PRODUCT_GMS_CLIENTID_BASE := android-doogee
TARGET_VENDOR := doogee
TARGET_VENDOR_PRODUCT_NAME := S80
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="full_k63v2_64_bsp-user 8.1.0 O11019 1536869854 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := DOOGEE/S80/S80:8.1.0/O11019/1526119961:user/release-keys
