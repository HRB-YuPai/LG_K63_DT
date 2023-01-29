#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from mfh505glm device
$(call inherit-product, device/lge/mfh505glm/device.mk)

PRODUCT_DEVICE := mfh505glm
PRODUCT_NAME := omni_mfh505glm
PRODUCT_BRAND := lge
PRODUCT_MODEL := mfh505glm
PRODUCT_MANUFACTURER := lge

PRODUCT_GMS_CLIENTID_BASE := android-lge

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_mfh505glm-userdebug 11 RP1A.200720.011 45 test-keys"

BUILD_FINGERPRINT := lge/full_mfh505glm/mfh505glm:11/RP1A.200720.011/45:userdebug/test-keys
