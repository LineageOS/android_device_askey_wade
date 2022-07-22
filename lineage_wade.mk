#
# Copyright (C) 2021-2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common AOSP stuff
$(call inherit-product, device/google/atv/products/atv_base.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_tv.mk)

# Inherit device configuration
$(call inherit-product, $(LOCAL_PATH)/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_BRAND := Askey
PRODUCT_DEVICE := wade
PRODUCT_GMS_CLIENTID_BASE := android-askey-tv
PRODUCT_MANUFACTURER := askey
PRODUCT_MODEL := Dynalink TV Box
PRODUCT_NAME := lineage_wade

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=wade \
    PRIVATE_BUILD_DESC="sti6130d350-user 10 QT 20220517 release-keys"

BUILD_FINGERPRINT := Dynalink/sti6130d350/sti6130d350:10/QT/20220517:user/release-keys
