# Copyright (C) 2019 The PixelExperience Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

$(call inherit-product, device/realme/RMX1927/device.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)


# Inherit some common BeastROMs stuff.
$(call inherit-product, vendor/beast/config/common_full_phone.mk)
TARGET_BOOT_ANIMATION_RES := 720

PRODUCT_SHIPPING_API_LEVEL := 28

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := beast_RMX1927
PRODUCT_DEVICE := RMX1927
PRODUCT_BRAND := Realme
PRODUCT_MODEL := realme 5
PRODUCT_MANUFACTURER := Realme

BEAST_BUILD_TYPE := OFFICIAL

BUILD_FINGERPRINT := "realme/RMX1927/RMX1927:9/PKQ1.190101.001/1566976638:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="trinket-user 9 PKQ1.190101.001 eng.root.20190909.095224 release-keys" \
    PRODUCT_NAME="RMX1927" \
    TARGET_DEVICE="RMX1927"

PRODUCT_GMS_CLIENTID_BASE := android-realme
