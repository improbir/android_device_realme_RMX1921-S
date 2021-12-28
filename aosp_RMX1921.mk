#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common PE stuff
TARGET_GAPPS_ARCH := arm64
TARGET_BOOT_ANIMATION_RES := 1080

$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

TARGET_INCLUDE_WIFI_EXT := true

# Inherit from RMX1921 device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := Realme
PRODUCT_DEVICE := RMX1921
PRODUCT_MANUFACTURER := Realme
PRODUCT_NAME := aosp_RMX1921
PRODUCT_MODEL := Realme XT

PRODUCT_GMS_CLIENTID_BASE := android-realme

BUILD_FINGERPRINT := "google/redfin/redfin:12/SQ1A.211205.008/7888514:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
        PRIVATE_BUILD_DESC="redfin-user 12 SQ1A.211205.008 7888514 release-keys" \
        PRODUCT_NAME="RMX1921" \
	TARGET_DEVICE="RMX1921"

