#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_n_mr1.mk)

# Inherit some common AncientOS stuff.
TARGET_BOOT_ANIMATION_RES := 720
ANCIENT_OFFICIAL := true
USE_PIXEL_CHARGING := true
TARGET_USES_BLUR := true
TARGET_FACE_UNLOCK_SUPPORTED := true
$(call inherit-product, vendor/ancient/config/common_full_phone.mk)

# Inherit from rova device
$(call inherit-product, device/xiaomi/rova/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := rova
PRODUCT_NAME := ancient_rova
BOARD_VENDOR := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi 4A / 5A
PRODUCT_MANUFACTURER := Xiaomi
TARGET_VENDOR := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
