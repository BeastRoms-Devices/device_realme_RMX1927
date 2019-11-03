#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifer: Apache-2.0
#

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from RMX1927 device.
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_DEVICE := RMX1927
PRODUCT_NAME := lineage_RMX1927
PRODUCT_BRAND := Realme
PRODUCT_MODEL := Realme 5
PRODUCT_MANUFACTURER := Realme

PRODUCT_GMS_CLIENTID_BASE := android-realme

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="trinket-user 9 PKQ1.190101.001 eng.root.20190909.095224 release-keys"

BUILD_FINGERPRINT := "realme/RMX1927/RMX1927:9/PKQ1.190101.001/1566976638:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="RMX1927" \
    TARGET_DEVICE="RMX1927"
