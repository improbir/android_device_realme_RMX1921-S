#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common stuff
TARGET_GAPPS_ARCH := arm64
TARGET_BOOT_ANIMATION_RES := 1080

# Inherit some common AwakenOS stuff.
$(call inherit-product, vendor/awaken/config/common_full_phone.mk)

TARGET_INCLUDE_WIFI_EXT := true

# Inherit from RMX1921 device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Pixel Launcher 
#$(call inherit-product, vendor/PixelLauncher/PixelLauncher.mk)

PRODUCT_BRAND := Realme
PRODUCT_DEVICE := RMX1921
PRODUCT_MANUFACTURER := Realme
PRODUCT_NAME := awaken_RMX1921
PRODUCT_MODEL := Realme XT

PRODUCT_GMS_CLIENTID_BASE := android-realme

BUILD_FINGERPRINT := "google/raven/raven:13/TQ1A.221205.011/9244662:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
        PRIVATE_BUILD_DESC="raven-user 13 TQ1A.221205.011 9244662 release-keys" \
        PRODUCT_NAME="RMX1921" \
	TARGET_DEVICE="RMX1921"
    
TARGET_SUPPORTS_QUICK_TAP := true
USE_GAPPS := true
EXTRA_UDFPS_ANIMATIONS := true
