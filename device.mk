#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1600
TARGET_SCREEN_WIDTH := 720

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-lineage

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Inherit from Realme trinket-common
$(call inherit-product, device/realme/trinket-common/trinket.mk)

# Fingerprint
PRODUCT_PACKAGES += \
    vendor.oppo.hardware.biometrics.fingerprint@2.1

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media_profiles_vendor.xml:system/etc/media_profiles_vendor.xml

# Properties
-include $(LOCAL_PATH)/device-props.mk

# Inherit from proprietary version
$(call inherit-product-if-exists, vendor/realme/RMX1927/RMX1927-vendor.mk)
