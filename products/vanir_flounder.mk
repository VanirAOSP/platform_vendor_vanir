#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += persist.camera.cpp.duplication=false ro.goo.rom=vanir-flounder

# Boot animation
TARGET_SCREEN_WIDTH := 1536
TARGET_SCREEN_HEIGHT := 2048

# Make CM related stuffs
PRODUCT_PACKAGES += com.android.nfc_extras Snap Gello

# Inherit common vanir files.
$(call inherit-product, vendor/vanir/products/common_tabs.mk)
PRODUCT_PACKAGE_OVERLAYS += vendor/vanir/overlay/tab_no_radio

# Inherit device configuration
$(call inherit-product, device/htc/flounder/aosp_flounder.mk)
$(call inherit-product-if-exists, vendor/htc/flounder/device-vendor.mk)

# CM Overlays
DEVICE_PACKAGE_OVERLAYS += device/htc/flounder/overlay-cm

BOARD_NEEDS_VENDORIMAGE_SYMLINK := true

# It's a Nexus

# Inline kernel building
KERNEL_TOOLCHAIN := $(ANDROID_BUILD_TOP)/prebuilts/gcc/$(HOST_OS)-x86/aarch64/aarch64-linux-android-4.9/bin
KERNEL_TOOLCHAIN_PREFIX := aarch64-linux-android-
TARGET_KERNEL_SOURCE := kernel/htc/flounder
TARGET_KERNEL_CONFIG := lineage_flounder_defconfig
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
BOARD_KERNEL_CMDLINE := androidboot.selinux=enforcing
TARGET_PREBUILT_KERNEL := false

## Device identifier. This must come after all inclusions
PRODUCT_NAME := vanir_flounder
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 9

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=flounder BUILD_FINGERPRINT=google/volantis/flounder:7.1.1/N9F27H/4108833:user/release-keys PRIVATE_BUILD_DESC="volantis-user 7.1.1 N9F27H 4108833 release-keys"
