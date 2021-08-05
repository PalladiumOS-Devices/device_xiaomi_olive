#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit some common DotOS stuff.
$(call inherit-product, vendor/dot/config/common.mk)

# Inherit from olive device
$(call inherit-product, device/xiaomi/olive/device.mk)

# Some build flags
DEVICE_MAINTAINER := deadlylxrd
TARGET_BOOT_ANIMATION_RES := 720
TARGET_FACE_UNLOCK := true
TARGET_USES_BLUR := true
TARGET_INCLUDE_PIXEL_CHARGER := true
IS_PHONE := true

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := olive
PRODUCT_NAME := dot_olive
BOARD_VENDOR := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi 8
PRODUCT_MANUFACTURER := Xiaomi
TARGET_VENDOR := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "Xiaomi/olive/olive:10/QKQ1.191014.001/V12.0.3.0.QCNMIXM:user/release-keys"
