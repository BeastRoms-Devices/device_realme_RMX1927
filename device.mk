#
# Copyright 2018 The Android Open Source Project
# Copyright 2019 The PixelExperience Project
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
#

# Get non-open-source specific aspects
$(call inherit-product-if-exists, vendor/realme/RMX1927/RMX1927-vendor.mk)

PRODUCT_COMPATIBLE_PROPERTY_OVERRIDE := true

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
	frameworks/native/data/etc/android.hardware.fingerprint.xml:system/etc/permissions/android.hardware.fingerprint.xml

# Board
PRODUCT_USES_QCOM_HARDWARE := true
PRODUCT_BOARD_PLATFORM := trinket

# Boot animation
TARGET_SCREEN_HEIGHT := 1600
TARGET_SCREEN_WIDTH := 720

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-beast

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    libaacwrapper
	
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_policy_configuration.xml:system/etc/audio_policy_configuration.xml

# ANT+
PRODUCT_PACKAGES += \
    AntHalService
	
# Bluetooth
PRODUCT_PACKAGES += \
    BluetoothResCommon
	
# Display
PRODUCT_PACKAGES += \
    libdisplayconfig \
    libqdMetaData.system \
    libvulkan
	
# FM
#PRODUCT_PACKAGES += \
    FM2 \
    libqcomfm_jni \
    qcom.fmradio
	
#PRODUCT_BOOT_JARS += \
    qcom.fmradio

# Fingerprint
PRODUCT_PACKAGES += \
    android.hardware.biometrics.fingerprint@2.1-service.realme_trinket \
    vendor.oppo.hardware.biometrics.fingerprint@2.1

#Hotspot
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/hostapd.accept:system/etc/hostapd/hostapd.accept \
    $(LOCAL_PATH)/configs/hostapd_default.conf:system/etc/hostapd/hostapd_default.conf \
    $(LOCAL_PATH)/configs/hostapd.deny:system/etc/hostapd/hostapd.deny

# Init
PRODUCT_PACKAGES += \
    init.qcom.rc \
    ueventd.oppo.rc
	
# IMS
PRODUCT_PACKAGES += \
    ims-ext-common \
    ims_ext_common.xml
	
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.ims.xml:system/etc/permissions/android.hardware.telephony.ims.xml

# Keylayouts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl

# Lights
PRODUCT_PACKAGES += \
    android.hardware.light@2.0-service.realme_trinket
	
# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media_profiles_vendor.xml:system/etc/media_profiles_vendor.xml

# Net
PRODUCT_PACKAGES += \
    netutils-wrapper-1.0
	
# NFC
PRODUCT_PACKAGES += \
    com.android.nfc_extras \
    NfcNci \
    Tag

# OTA
#PRODUCT_PACKAGES += \
    Updates
	
# Placeholder
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/placeholder:system/etc/placeholder

# Power
PRODUCT_PACKAGES += \
    power.qcom:64

# Soong
PRODUCT_SOONG_NAMESPACES += \
    device/realme/RMX1927

# Telephony
PRODUCT_PACKAGES += \
    telephony-ext \
    qti-telephony-utils \
    qti_telephony_utils.xml \
    qti-telephony-hidl-wrapper \
    qti_telephony_hidl_wrapper.xml

PRODUCT_BOOT_JARS += \
    telephony-ext

