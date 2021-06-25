#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

include vendor/askey/wade/BoardConfigVendor.mk

include device/amlogic/g12-common/BoardConfigCommon.mk

DEVICE_PATH := device/askey/wade

## Bootloader
TARGET_BOOTLOADER_BOARD_NAME := wade

## DTB
TARGET_DTB_NAME := g12a_s905x2_u212_sti6130d3x0
