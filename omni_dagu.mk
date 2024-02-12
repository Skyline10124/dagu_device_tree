#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from dagu device
$(call inherit-product, device/xiaomi/dagu/device.mk)

PRODUCT_DEVICE := dagu
PRODUCT_NAME := omni_dagu
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 22081281AC
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="dagu-user 13 RKQ1.211001.001 V816.0.1.0.ULZCNXM release-keys"

BUILD_FINGERPRINT := Xiaomi/dagu/dagu:13/RKQ1.211001.001/V816.0.1.0.ULZCNXM:user/release-keys
