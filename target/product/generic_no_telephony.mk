#
# Copyright (C) 2007 The Android Open Source Project
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

# This is a generic phone product that isn't specialized for a specific device.
# It includes the base Android platform.

PRODUCT_POLICY := android.policy_phone

PRODUCT_PACKAGES := \
    DeskClock \
    Bluetooth \
    Calculator \
    CertInstaller \
    CMFileManager \
    DrmProvider \
    Email \
    Exchange2 \
    FusedLocation \
    InputDevices \
    Launcher2 \
    MusicFX \
    Phone \
    Settings \
    SystemUI \
    CalendarProvider \
    bluetooth-health \
    hostapd \
    wpa_supplicant.conf

PRODUCT_PACKAGES += \
    audio \
    dhcpcd.conf \
    network \
    pand \
    pppd \
    sdptool \
    wpa_supplicant

PRODUCT_PACKAGES += \
    icu.dat

PRODUCT_PACKAGES += \
    librs_jni

PRODUCT_PACKAGES += \
    audio.primary.default \
    audio_policy.default \
    local_time.default \
    power.default

PRODUCT_PACKAGES += \
    local_time.default

PRODUCT_COPY_FILES := \
        frameworks/av/media/libeffects/data/audio_effects.conf:system/etc/audio_effects.conf

PRODUCT_PROPERTY_OVERRIDES += \
    ro.carrier=unknown

$(call inherit-product-if-exists, frameworks/base/data/fonts/fonts.mk)
$(call inherit-product-if-exists, external/cibu-fonts/fonts.mk)
$(call inherit-product-if-exists, external/lohit-fonts/fonts.mk)
$(call inherit-product-if-exists, external/naver-fonts/fonts.mk)
$(call inherit-product-if-exists, frameworks/base/data/keyboards/keyboards.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core.mk)

# Overrides
PRODUCT_BRAND := generic
PRODUCT_DEVICE := generic
PRODUCT_NAME := generic_no_telephony
