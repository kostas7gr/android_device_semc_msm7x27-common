# Use minimal stuff due to low storage
$(call inherit-product, vendor/cm/config/common_mini_phone.mk)

# Extra Ringtones
include frameworks/base/data/sounds/AudioPackageNewWave.mk

# MiniCM9 theme
PRODUCT_COPY_FILES += \
    device/semc/msm7x27-common/prebuilt/MiniCM9.apk:system/app/MiniCM9.apk

PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.themeId=MiniCM9 \
    persist.sys.themePackageName=com.darkdog.theme.minicm9

# Gps / Audio
PRODUCT_PACKAGES += \
    gps.delta \
    audio.a2dp.default \
    audio_policy.delta \
    audio.primary.delta

# GPU
PRODUCT_PACKAGES += \
    gralloc.default \
    gralloc.msm7x27 \
    hwcomposer.default \
    hwcomposer.msm7x27 \
    camera.msm7x27 \
    libgenlock \
    libmemalloc \
    libtilerenderer \
    libQcomUI \
    liboverlay

# Omx
PRODUCT_PACKAGES += \
    libmm-omxcore \
    libdivxdrmdecrypt \
    libOmxCore \
    libOmxVdec \
    libOmxVenc \
    libstagefrighthw \
    libopencorehw

# Live wallpaper packages
PRODUCT_PACKAGES += \
    CMWallpapers \
    LiveWallpapersPicker \
    librs_jni \
    LiveWallpapers \
    MagicSmokeWallpapers \
    VisualizationWallpapers \
    Apollo

# Extra packages
PRODUCT_PACKAGES += \
    FileManager \
    screencap \
    hostap \
    rzscontrol \
    CMUpdateNotify \
    com.android.future.usb.accessory

# FM Radio
PRODUCT_PACKAGES += \
    hciattach \
    com.ti.fm.fmreceiverif.xml \
    fmreceiverif \
    Fmapplication \
    libfmrx \
    libfm_stack \
    FmRxService

# for bugmailer
PRODUCT_PACKAGES += send_bug
PRODUCT_COPY_FILES += \
        system/extras/bugmailer/bugmailer.sh:system/bin/bugmailer.sh \
        system/extras/bugmailer/send_bug:system/bin/send_bug

# for compcache
PRODUCT_COPY_FILES += \
        device/semc/msm7x27-common/prebuilt/rzscontrol:system/xbin/rzscontrol

# Voice search workaround
PRODUCT_COPY_FILES += \
        device/semc/msm7x27-common/prebuilt/libvoicesearch.so:system/lib/libvoicesearch.so \
        device/semc/msm7x27-common/prebuilt/VoiceSearch.apk:system/app/VoiceSearch.apk

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distict.xml \
    frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/base/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/base/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml    

# Gps config
PRODUCT_COPY_FILES += \
    device/semc/msm7x27-common/prebuilt/gps.conf:system/etc/gps.conf

# Bluetooth configuration files
PRODUCT_COPY_FILES += \
    system/bluetooth/data/main.le.conf:system/etc/bluetooth/main.conf

PRODUCT_PROPERTY_OVERRIDES += \
    ro.media.dec.jpeg.memcap=10000000

PRODUCT_PROPERTY_OVERRIDES += \
    rild.libpath=/system/lib/libril-qc-1.so \
    rild.libargs=-d/dev/smd0 \
    ro.ril.hep=1 \
    ro.ril.hsdpa.category=10 \
    ro.ril.enable.dtm=1 \
    ro.ril.enable.3g.prefix=1 \
    ro.ril.hsxpa=2 \
    ro.ril.gprsclass=10 \
    ro.ril.hsupa.category=6 \
    ro.ril.disable.power.collapse=1 \
    ro.telephony.ril_class=SemcRIL \
    wifi.interface=tiwlan0

# Time between scans in seconds. Keep it high to minimize battery drain.
# This only affects the case in which there are remembered access points,
# but none are in range.
#
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.supplicant_scan_interval=45   

# Configure agps cell location.
PRODUCT_PROPERTY_OVERRIDES += \
    ro.ril.def.agps.mode=2 \
    ro.ril.def.agps.feature=1

# 16bpp alpha
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.use_16bpp_alpha=1

# Dithering
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.use_dithering=0

# Default network type
# 0 => WCDMA Preferred.
PRODUCT_PROPERTY_OVERRIDES += \
    ro.telephony.default_network=0 \
    ro.telephony.call_ring.delay=0 \
    ro.telephony.call_ring.multiple=false

# Some more stuff:
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.locationfeatures=1 \
    ro.com.google.networklocation=1 \
    ro.ril.enable.a52=1 \
    ro.ril.enable.a53=1 \
    ro.telephony.ril.v3=qcomuiccstack,icccardstatus,skipbrokendatacall,signalstrength,datacall \
    ro.telephony.ril_skip_locked=false \
    ro.media.enc.file.format       = 3gp,mp4 \
    ro.media.enc.vid.codec         = m4v,h263 \
    ro.media.enc.vid.h263.width    = 176,640 \
    ro.media.enc.vid.h263.height   = 144,480 \
    ro.media.enc.vid.h263.bps      = 64000,1600000 \
    ro.media.enc.vid.h263.fps      = 1,30 \
    ro.media.enc.vid.m4v.width     = 176,640 \
    ro.media.enc.vid.m4v.height    = 144,480 \
    ro.media.enc.vid.m4v.bps       = 64000,1600000 \
    ro.media.enc.vid.m4v.fps       = 1,30 \
    ro.media.dec.aud.wma.enabled=1 \
    ro.media.dec.vid.wmv.enabled=1 \
    settings.display.autobacklight=1 \
    media.stagefright.enable-player=true \
    media.stagefright.enable-meta=true \
    media.stagefright.enable-scan=true \
    media.stagefright.enable-http=true \
    keyguard.no_require_sim=true \
    windowsmgr.max_events_per_sec=150 \
    debug.camcorder.disablemeta=1

# Dalvik properties - read from AndroidRuntime
# dexop-flags:
# "v="  verification 'n': none, 'r': remote, 'a': all
# "o="  optimization 'n': none, 'v': verified, 'a': all, 'f': full
# "m=y" register map
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.dexopt-flags=m=y \
    dalvik.vm.checkjni=false \
    dalvik.vm.dexopt-data-only=1 \
    dalvik.vm.lockprof.threshold=500 \
    dalvik.vm.execution-mode=int:jit \
    dalvik.vm.heapsize=32m

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# Enable gpu composition: 0 => cpu composition, 1 => gpu composition
# Note: must be 1 for debug.composition.type to work
PRODUCT_PROPERTY_OVERRIDES += debug.sf.hw=1

# Enable copybit composition
PRODUCT_PROPERTY_OVERRIDES += debug.composition.type=mdp

# Force 2 buffers - gralloc defaults to 3 and we only have 2
PRODUCT_PROPERTY_OVERRIDES += debug.gr.numframebuffers=2

# HardwareRenderer properties
# dirty_regions: "false" to disable partial invalidates, override if enabletr=true
PRODUCT_PROPERTY_OVERRIDES += \
    hwui.render_dirty_regions=false \
    hwui.disable_vsync=true \
    hwui.print_config=choice \
    debug.enabletr=false \
    com.qc.hardware=true

# Compcache
PRODUCT_PROPERTY_OVERRIDES += \
    persist.service.zram=1 \
    ro.zram.default=18

# Set usb type
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mass_storage,adb \
    persist.service.adb.enable=1

PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=131072 \
    ro.product.locale.language=en \
    ro.product.locale.region=US \
    persist.ro.ril.sms_sync_sending=1 \
    persist.android.strictmode=0 \
    debug.performance.tuning=1 \
    video.accelerate.hw=1 \
    pm.sleep_mode=1 \
    persist.pmem.camera=4000000

# Enable ti hotspot
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.hotspot.ti=1 \
    wifi.ap.interface = tiap0

# Default ringtone
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=CyanTone.ogg \
    ro.config.notification_sound=CyanMessage.ogg \
    ro.config.alarm_alert=CyanAlarm.ogg

PRODUCT_LOCALES += en

# Extra prebuilt binaries
PRODUCT_COPY_FILES += \
    device/semc/msm7x27-common/prebuilt/com.sonyericsson.suquashi.jar:system/framework/com.sonyericsson.suquashi.jar \
    device/semc/msm7x27-common/prebuilt/Radio.apk:system/app/Radio.apk \
    device/semc/msm7x27-common/prebuilt/SystemConnector.apk:system/app/SystemConnector.apk \
    device/semc/msm7x27-common/prebuilt/SemcSmfmf.jar:system/framework/SemcSmfmf.jar \
    device/semc/msm7x27-common/prebuilt/vold.fstab:system/etc/vold.fstab \
    device/semc/msm7x27-common/prebuilt/AudioFilter.csv:system/etc/AudioFilter.csv \
    device/semc/msm7x27-common/prebuilt/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt

# Keylayouts
PRODUCT_COPY_FILES += \
    device/semc/msm7x27-common/prebuilt/usr/keylayout/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl \
    device/semc/msm7x27-common/prebuilt/usr/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
    device/semc/msm7x27-common/prebuilt/usr/keylayout/7k_handset.kl:system/usr/keylayout/7k_handset.kl \
    device/semc/msm7x27-common/prebuilt/usr/keylayout/systemconnector.kl:system/usr/keylayout/systemconnector.kl \
    device/semc/msm7x27-common/prebuilt/usr/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl

## Wifi and hotspot
PRODUCT_COPY_FILES += \
    device/semc/msm7x27-common/prebuilt/tiap_loader.sh:system/bin/tiap_loader.sh \
    device/semc/msm7x27-common/prebuilt/10dnsconf:system/etc/init.d/10dnsconf \
    device/semc/msm7x27-common/prebuilt/10hostapconf:system/etc/init.d/10hostapconf \
    device/semc/msm7x27-common/prebuilt/hostapd.conf:system/etc/wifi/softap/hostapd.conf \
    device/semc/msm7x27-common/prebuilt/dnsmasq.conf:system/etc/wifi/dnsmasq.conf \
    device/semc/msm7x27-common/prebuilt/tiwlan_firmware.bin:system/etc/wifi/tiwlan_firmware.bin \
    device/semc/msm7x27-common/prebuilt/tiwlan_firmware_ap.bin:system/etc/wifi/softap/tiwlan_firmware_ap.bin 

# A2SD and extra init files
PRODUCT_COPY_FILES += \
    device/semc/msm7x27-common/prebuilt/a2sd:system/bin/a2sd \
    device/semc/msm7x27-common/prebuilt/00banner:system/etc/init.d/00banner \
    device/semc/msm7x27-common/prebuilt/10apps2sd:system/etc/init.d/10apps2sd \
    device/semc/msm7x27-common/prebuilt/05mountext:system/etc/init.d/05mountext \
    device/semc/msm7x27-common/prebuilt/04modules:system/etc/init.d/04modules \
    device/semc/msm7x27-common/prebuilt/06minicm:system/etc/init.d/06minicm \
    device/semc/msm7x27-common/prebuilt/zipalign:system/xbin/zipalign

# Adreno 200 files
PRODUCT_COPY_FILES += \
    device/semc/msm7x27-common/prebuilt/libgsl.so:system/lib/libgsl.so \
    device/semc/msm7x27-common/prebuilt/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \
    device/semc/msm7x27-common/prebuilt/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \
    device/semc/msm7x27-common/prebuilt/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \
    device/semc/msm7x27-common/prebuilt/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so \
    device/semc/msm7x27-common/prebuilt/eglsubAndroid.so:system/lib/egl/eglsubAndroid.so \
    device/semc/msm7x27-common/prebuilt/libC2D2.so:system/lib/libC2D2.so \
    device/semc/msm7x27-common/prebuilt/libOpenVG.so:system/lib/libOpenVG.so \
    device/semc/msm7x27-common/prebuilt/libsc-a2xx.so:system/lib/libsc-a2xx.so \
    device/semc/msm7x27-common/prebuilt/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
    device/semc/msm7x27-common/prebuilt/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw \
    device/semc/msm7x27-common/prebuilt/adreno_config.txt:system/etc/adreno_config.txt

# ANT
PRODUCT_COPY_FILES += \
    device/semc/msm7x27-common/prebuilt/AntHalService.apk:system/app/AntHalService.apk

# Hciattach
PRODUCT_COPY_FILES += \
    device/semc/msm7x27-common/prebuilt/hciattach:system/bin/hciattach

# Extra Cyanogen vendor files
PRODUCT_COPY_FILES += \
    vendor/cm/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml

