#
# Copyright (C) 2018 The Xiaomi-SDM660 Project
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

# Inherit device configuration
$(call inherit-product, device/xiaomi/lavender/device.mk)

# Inherit some common 404 stuff
$(call inherit-product, vendor/404/configs/common.mk)

# Device identifier
PRODUCT_NAME := p404_lavender
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_PLATFORM := SDM660
PRODUCT_DEVICE := lavender
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 7

TARGET_VENDOR_PRODUCT_NAME := lavender

# Build type
VERSION_BRAND := SHINKA

ifeq ($(WITH_GAPPS),true)
ZIP := GAPPS
else
ZIP := VANILLA
endif

P404_BUILDTYPE := $(VERSION_BRAND)-$(ZIP)
