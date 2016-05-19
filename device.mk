#
# Copyright (C) 2016 The Android Open-Source Project
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

# This file includes all definitions that apply to ALL aqua devices, and
# are also specific to aqua devices
#
# Everything in this directory will become public

PRODUCT_COPY_FILES += \
    device/xiaomi/aqua/fstab.libra:root/fstab.libra \
    device/xiaomi/aqua/init.libra.fp.rc:root/init.libra.fp.rc

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:system/etc/permissions/android.hardware.fingerprint.xml

PRODUCT_CHARACTERISTICS := default

# Fingerprint Sensor
PRODUCT_PACKAGES += \
    fingerprint.libra

# Inherit the rest from libra
$(call inherit-product, device/xiaomi/libra/device.mk)