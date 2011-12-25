#
# Copyright (C) 2011 The Android Open Source Project
# Portions Copyright (C) 2011 The Evervolv Project
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

DEVICE_PACKAGE_OVERLAYS := device/lge/thundercls670/overlay

PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=android-sprint-us \
    ro.cdma.home.operator.alpha=Sprint \
    ro.cdma.home.operator.numeric=310120 \
    gsm.sim.operator.alpha=Sprint) \
    gsm.sim.operator.numeric=310120 \
    gsm.operator.alpha=Sprint \
    gsm.operator.numeric=310120

PRODUCT_COPY_FILES += \
    device/lge/thundercls670/prebuilt/root/init.thunderc.rc:root/init.thunderc.rc \
    device/lge/thundercls670/prebuilt/root/ueventd.thunderc.rc:root/ueventd.thunder.rc

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/lge/thundercls670/prebuilt/root/zImage
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# Kernel modules
PRODUCT_COPY_FILES += \
    device/lge/thundercls670/prebuilt/system/lib/modules/dma_test.ko:system/lib/modules/dma_test.ko \
    device/lge/thundercls670/prebuilt/system/lib/modules/librasdioif.ko:system/lib/modules/librasdioif.ko \
    device/lge/thundercls670/prebuilt/system/lib/modules/pmem_kernel_test.ko:system/lib/modules/pmem_kernel_test.ko \
    device/lge/thundercls670/prebuilt/system/lib/modules/reset_modem.ko:system/lib/modules/reset_modem.ko \
    device/lge/thundercls670/prebuilt/system/lib/modules/wireless.ko:system/lib/modules/wireless.ko

# Input config files
PRODUCT_COPY_FILES += \
    device/lge/thundercls670/prebuilt/system/usr/idc/touch_mcs6000.idc:/system/usr/idc/touch_mcs6000.idc \
    device/lge/thundercls670/prebuilt/system/usr/idc/thunder_keypad.idc:/system/usr/idc/thunder_keypad.idc \
    device/lge/thundercls670/prebuilt/system/usr/idc/7k_handset.idc:/system/usr/idc/7k_handset.idc

# Keylayouts (Matching to input configs)
PRODUCT_COPY_FILES += \
    device/lge/thundercls670/prebuilt/system/usr/keylayout/thunder_keypad.kl:system/usr/keylayout/thunder_keypad.kl \
    device/lge/thundercls670/prebuilt/system/usr/keylayout/7k_handset.kl:system/usr/keylayout/7k_handset.kl

PRODUCT_PACKAGES += \
    librs_jni \
    libmm-omxcore \
    libOmxCore \
    bdaddr_read \
    flash_image \
    dump_image \
    erase_image \
    e2fsck \
    gralloc.msm7k \
    audio_policy.thunderc \
    audio.primary.thunderc

# Publish that we support the live wallpaper feature.
PRODUCT_COPY_FILES += \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml



# Board-specific init (does not support charging in "power off" state yet)
#PRODUCT_COPY_FILES += \
#    device/lge/thunderc/files/initlogo.rle:root/initlogo.rle \
#    device/lge/thunderc/files/chargerlogo:root/chargerlogo \
#    device/lge/thunderc/files/chargerimages/battery_ani_01.rle:root/chargerimages/battery_ani_01.rle \
#    device/lge/thunderc/files/chargerimages/battery_ani_02.rle:root/chargerimages/battery_ani_02.rle \
#    device/lge/thunderc/files/chargerimages/battery_ani_03.rle:root/chargerimages/battery_ani_03.rle \
#    device/lge/thunderc/files/chargerimages/battery_ani_04.rle:root/chargerimages/battery_ani_04.rle \
#    device/lge/thunderc/files/chargerimages/battery_ani_05.rle:root/chargerimages/battery_ani_05.rle \
#    device/lge/thunderc/files/chargerimages/battery_charging_01.rle:root/chargerimages/battery_charging_01.rle \
#    device/lge/thunderc/files/chargerimages/battery_charging_02.rle:root/chargerimages/battery_charging_02.rle \
#    device/lge/thunderc/files/chargerimages/battery_charging_03.rle:root/chargerimages/battery_charging_03.rle \
#    device/lge/thunderc/files/chargerimages/battery_charging_04.rle:root/chargerimages/battery_charging_04.rle \
#    device/lge/thunderc/files/chargerimages/battery_charging_05.rle:root/chargerimages/battery_charging_05.rle \
#    device/lge/thunderc/files/chargerimages/battery_charging_06.rle:root/chargerimages/battery_charging_06.rle \
#    device/lge/thunderc/files/chargerimages/battery_notenough.rle:root/chargerimages/battery_notenough.rle \
#    device/lge/thunderc/files/chargerimages/battery_bg.rle:root/chargerimages/battery_bg.rle \
#    device/lge/thunderc/files/chargerimages/black_bg.rle:root/chargerimages/black_bg.rle \
#    device/lge/thunderc/files/chargerimages/battery_wait_ani_01.rle:root/chargerimages/battery_wait_ani_01.rle \
#    device/lge/thunderc/files/chargerimages/battery_wait_ani_01.rle:root/chargerimages/battery_wait_ani_02.rle \
#    device/lge/thunderc/files/etc/init.local.rc:/system/etc/init.local.rc

# GPS
PRODUCT_COPY_FILES += \
    device/lge/thundercls670/prebuilt/system/etc/loc_parameter.ini:system/etc/loc_parameter.ini \

# WiFi
PRODUCT_COPY_FILES += \
    device/lge/thundercls670/prebuilt/system/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    device/lge/thundercls670/prebuilt/system/etc/dhcpcd/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf

# Device permissions
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/base/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml

PRODUCT_COPY_FILES += \
    device/lge/thundercls670/prebuilt/system/etc/vold.fstab:system/etc/vold.fstab \
    device/lge/thundercls670/prebuilt/system/etc/media_profiles.xml:system/etc/media_profiles.xml \
    device/lge/thundercls670/prebuilt/system/etc/init.d/mvdalvik.sh:system/etc/init.d/01mvdalvik 

# Let's use our own GPS config file
PRODUCT_COPY_FILES += device/lge/thundercls670/prebuilt/system/etc/gps.conf:system/etc/gps.conf

$(call inherit-product, build/target/product/full_base_telephony.mk)

$(call inherit-product-if-exists, vendor/lge/thundercls670/thundercls670-vendor.mk)

PRODUCT_LOCALES += en
PRODUCT_AAPT_CONFIG := normal mdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi

PRODUCT_NAME := full_thunderc
PRODUCT_BRAND := LGE
PRODUCT_DEVICE := thunderc
PRODUCT_MANUFACTURER := LGE

