# Copy prebuilt files.
PRODUCT_COPY_FILES += \
    vendor/aoezp/prebuilt/common/bootanimations/BOOTANIMATION-1440x2560.zip:system/media/bootanimation.zip \
    vendor/aoezp/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml

# Backup Tool
ifneq ($(WITH_GMS),true)
PRODUCT_COPY_FILES += \
    vendor/aoezp/prebuilt/common/bin/50-aoezp.sh:system/addon.d/50-aoezp.sh \
    vendor/aoezp/prebuilt/common/bin/backuptool.sh:install/bin/backuptool.sh \
    vendor/aoezp/prebuilt/common/bin/backuptool.functions:install/bin/backuptool.functions
endif

#Root by default
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.root_access=1

# SuperSU
PRODUCT_COPY_FILES += \
    vendor/aoezp/prebuilt/common/etc/UPDATE-SuperSU.zip:system/addon.d/UPDATE-SuperSU.zip \
    vendor/aoezp/prebuilt/common/etc/init.d/99SuperSUDaemon:system/etc/init.d/99SuperSUDaemon

# Inherit common product build prop overrides
-include vendor/aoezp/products/common_versions.mk