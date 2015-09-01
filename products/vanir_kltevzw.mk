# when this builds, it will probably mess your phone up.
# you might want to wait to try this unless you have a giant pair of low-hanging huevos

PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=vanir-kltevzw \
    ro.com.google.clientidbase=android-samsung \
    ro.com.google.clientidbase.gmm=android-samsung

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/1080x1920.zip:system/media/bootanimation.zip

# Inherit common product files.
NO_DRM_BLOBS := true

# Inherit common phone stuff
$(call inherit-product, vendor/vanir/products/common_phones.mk)

# Inherit common Verizon Wireless Perms and Lib
$(call inherit-product, vendor/vanir/products/vzw.mk)

$(call inherit-product, device/samsung/kltevzw/full_kltevzw.mk)

PRODUCT_NAME := vanir_kltevzw
