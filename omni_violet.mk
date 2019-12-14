# Release name
PRODUCT_RELEASE_NAME := violet

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, build/target/product/embedded.mk)	

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Device identifier. This must come after all inclusions
PRODUCT_NAME := omni_violet
PRODUCT_DEVICE := violet
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 7 Pro

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    sys.usb.controller=a600000.dwc3 \
    sys.usb.rndis.func.name=rndis_bam \
    sys.usb.rmnet.func.name=rmnet_bam

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=violet \
    PRODUCT_NAME=violet

PRODUCT_PROPERTY_OVERRIDES += \
    ro.treble.enabled=true \
    ro.vendor.build.security_patch=2029-10-31

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
