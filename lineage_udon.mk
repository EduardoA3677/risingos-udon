#
# Copyright (C) 2021-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from udon device
$(call inherit-product, device/oneplus/udon/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_udon
PRODUCT_DEVICE := udon
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := CPH2487

PRODUCT_BUILD_PROP_OVERRIDES += \
    RisingChipset="SnapDragon 8+ Gen 1" \
    RisingMaintainer="EduardoA3677"
TARGET_ENABLE_BLUR := true
RISING_CHIPSET := SM8475
WITH_GMS := true
TARGET_CORE_GMS_EXTRAS := true
TARGET_DEFAULT_PIXEL_LAUNCHER := true
TARGET_HAS_UDFPS := true
PRODUCT_NO_CAMERA := false

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc= "CPH2487-user 13 SKQ1.220905.001 R4T3.1057738-62b8-3b9 release-keys" \
    DeviceName=CPH2487 \
    DeviceProduct=OP5961L1 \
    SystemName=CPH2487 \
    SystemDevice=OP5961L1

BUILD_FINGERPRINT := OnePlus/CPH2487/OP5961L1:13/SKQ1.221119.001/T.R4T3.1057738-62b8-3b9:user/release-keys
