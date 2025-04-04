#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from g0q device
$(call inherit-product, device/samsung/g0q/device.mk)

PRODUCT_DEVICE := g0q
PRODUCT_NAME := twrp_g0q
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-S906E
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="g0qxxx-user 12 SP1A.210812.016 S906EXXSCEYB7 release-keys"

BUILD_FINGERPRINT := samsung/g0qxxx/g0q:12/SP1A.210812.016/S906EXXSCEYB7:user/release-keys
