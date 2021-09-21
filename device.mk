#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/askey/wade

$(call inherit-product, vendor/askey/wade/wade-vendor.mk)

$(call inherit-product, device/amlogic/g12-common/g12.mk)

## Bluetooth
PRODUCT_PACKAGES += \
    libbt-vendor

## Init-Files
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/init-files/init.amlogic.wifi_buildin.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.amlogic.wifi_buildin.rc

## Keyhandler
PRODUCT_PACKAGES += \
    KeyHandler

## Kernel Modules
PRODUCT_PACKAGES += \
    dhd

## Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(DEVICE_PATH)/overlay \
    $(DEVICE_PATH)/overlay-lineage
