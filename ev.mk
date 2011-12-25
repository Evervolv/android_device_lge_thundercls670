# Inherit AOSP device configuration for supersonic.
$(call inherit-product, device/lge/thundercls670/full_thunderc.mk)

# Inherit some common evervolv stuff.
$(call inherit-product, vendor/ev/config/common_full_phone.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := ev_thundercls670
PRODUCT_BRAND := sprint
PRODUCT_DEVICE := thundercls670
PRODUCT_MODEL := LS670
PRODUCT_MANUFACTURER := LGE
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_ID=FRG83G PRODUCT_NAME=thunderc PRODUCT_DEVICE=thunderc BUILD_FINGERPRINT=sprint/LGE/thunderc/thunderc:2.2.2/FRG83G/ZVD.41B2924E:user/release-keys


# Set up the product codename, build version & MOTD.
PRODUCT_CODENAME := Vita
PRODUCT_VERSION_DEVICE_SPECIFIC := p1

PRODUCT_MOTD :="\n\n\n--------------------MESSAGE---------------------\nThank you for choosing Evervolv for your Optimus S\nPlease visit us at \#evervolv on irc.freenode.net\nFollow @preludedrew for the latest Evervolv updates\nGet the latest rom at evervolv.com\n------------------------------------------------\n"

#PRODUCT_PACKAGES += \
#    Camera

# Copy compatible prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/ev/prebuilt/hvga/media/bootanimation.zip:system/media/bootanimation.zip

# USB
#ADDITIONAL_DEFAULT_PROPERTIES += persist.sys.usb.config=mass_storage,adb
#ADDITIONAL_DEFAULT_PROPERTIES += persist.sys.usb.config=mtp,adb
