#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit some common Palladium stuff.
$(call inherit-product, vendor/palladium/config/common.mk)

# Inherit from olive device
$(call inherit-product, device/xiaomi/olive/device.mk)

# Set boot animation resolution
TARGET_BOOT_ANIMATION_RES := 720

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := olive
PRODUCT_NAME := palladium_olive
BOARD_VENDOR := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi 8
PRODUCT_MANUFACTURER := Xiaomi
TARGET_VENDOR := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "Xiaomi/olive/olive:10/QKQ1.191014.001/V12.5.1.0.QCNMIXM:user/release-keys"
#Official
PALLADIUM_BUILD_TYPE := OFFICIAL

# Palladium Specific props
PRODUCT_PRODUCT_PROPERTIES += \
  ro.palladiumdevice.maintainer=Ankitha \
  ro.palladiumdevice.battery=5000mAh \
  ro.palladiumdevice.camera=12MP+8MP  \
  ro.palladiumdevice.cpu=SD439 \
  ro.palladiumdevice.display=6.22 \
  ro.palladiumdevice.displaytype=HD+