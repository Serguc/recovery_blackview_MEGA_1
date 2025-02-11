#
# Copyright 2024 The Android Open Source Project
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
#
# Only the below variable(s) need to be changed!
#

# Define hardware platform
PRODUCT_RELEASE_NAME := MEGA_1

# Device path for OEM device tree
DEVICE_PATH := device/blackview/$(PRODUCT_RELEASE_NAME)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, $(DEVICE_PATH)/device.mk)

# Inherit any OrangeFox-specific settings
$(call inherit-product-if-exists, $(DEVICE_PATH)/fox_$(PRODUCT_RELEASE_NAME).mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)


## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := $(PRODUCT_RELEASE_NAME)
PRODUCT_NAME := twrp_$(PRODUCT_RELEASE_NAME)
PRODUCT_BRAND := Blackview
PRODUCT_MODEL := MEGA_1
PRODUCT_MANUFACTURER := Blackview


PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=MEGA_1 \
    PRODUCT_NAME=MEGA_1_NEU \
    PRIVATE_BUILD_DESC="MEGA_1_NEU/MEGA_1:12/SP1A.210812.016/1712939702:user/release-keys"

BUILD_FINGERPRINT := Blackview/MEGA_1_NEU/MEGA_1:12/SP1A.210812.016/1712939702:user/release-keys
PLATFORM_SECURITY_PATCH := 2024-02-05

