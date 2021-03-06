#
# Copyright (C) 2017 The LineageOS Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from v30 device
$(call inherit-product, device/lge/v30/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_v30
PRODUCT_DEVICE := v30
PRODUCT_MANUFACTURER := LGE
PRODUCT_BRAND := lge
PRODUCT_MODEL := LG-H930

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

TARGET_VENDOR_PRODUCT_NAME := v30
TARGET_VENDOR_DEVICE_NAME := v30

PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=joan PRODUCT_NAME=joan

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=lge/joan_skt_kr/joan:8.0.0/OPR1.170623.026/17352140325d0:user/release-keys \
    PRIVATE_BUILD_DESC="joan_skt_kr-user 8.0.0 OPR1.170623.026 17352140325d0 release-keys"

TARGET_VENDOR := lge
