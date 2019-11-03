#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from Xiaomi trinket-common
include device/realme/trinket-common/BoardConfigCommon.mk

DEVICE_PATH := device/realme/RMX1927

# Assert
TARGET_OTA_ASSERT_DEVICE := RMX1927,RMX1911

# Kernel
TARGET_KERNEL_SOURCE := kernel/realme/RMX1927
TARGET_KERNEL_CONFIG := vendor/trinket-perf_defconfig
TARGET_KERNEL_CLANG_COMPILE := true
TARGET_KERNEL_CLANG_PATH := $(PWD)/vendor/qcom/sdclang/6.0/prebuilt/linux-x86_64/bin

BOARD_BUILD_SYSTEM_ROOT_IMAGE := true

# SEPolicy
BOARD_PLAT_PRIVATE_SEPOLICY_DIR += $(DEVICE_PATH)/sepolicy/private

# Verified Boot
BOARD_AVB_ENABLE := true
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flag 2

# VNDK
BOARD_VNDK_RUNTIME_DISABLE := false

# Inherit from the proprietary version
-include vendor/realme/RMX1927/BoardConfigVendor.mk
