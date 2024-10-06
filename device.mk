#
# Copyright (C) 2021-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

## Bluetooth
PRODUCT_PACKAGES += \
    WadeBluetoothOverlay \
    libbt-vendor

## Bluetooth firmware
include kernel/amlogic/kernel-modules/dhd-driver/firmware/bluetooth/bluetooth.mk

## GMS
ifeq ($(WITH_GMS),true)
GMS_MAKEFILE=gms_minimal.mk
endif

## Init-Files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init-files/init.amlogic.wifi_buildin.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.amlogic.wifi_buildin.rc \
    $(LOCAL_PATH)/init-files/init.amlogic.target.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.amlogic.target.rc \

## Wi-Fi firmware
include kernel/amlogic/kernel-modules/dhd-driver/firmware/wifi/wifi.mk

## Inherit from the common tree product makefile
$(call inherit-product, device/amlogic/g12-common/g12.mk)

## Inherit from the proprietary files makefile
$(call inherit-product, vendor/askey/wade/wade-vendor.mk)
