# Adb
ifeq ($(TARGET_BUILD_VARIANT),eng)
# /vendor/default.prop is force-setting ro.adb.secure=1
# Get rid of that by overriding it on eng builds
PRODUCT_PRODUCT_PROPERTIES += \
    ro.secure=0 \
    ro.adb.secure=0
endif

# Audio
PRODUCT_PRODUCT_PROPERTIES += \
   ro.config.vc_call_vol_steps=7 \
   ro.config.media_vol_steps=25

# Bluetooth
PRODUCT_PRODUCT_PROPERTIES += \
   vendor.bluetooth.soc=cherokee

# Camera
PRODUCT_PRODUCT_PROPERTIES += \
   persist.camera.HAL3.enabled=1

# Charger
PRODUCT_PRODUCT_PROPERTIES += \
   ro.charger.enable_suspend=true

# CNE
PRODUCT_PRODUCT_PROPERTIES += \
   persist.vendor.cne.feature=1

# Data Modules
PRODUCT_PRODUCT_PROPERTIES += \
    persist.vendor.data.mode=concurrent

# Display
PRODUCT_PRODUCT_PROPERTIES += \
    ro.sf.lcd_density=440

# FM
PRODUCT_PRODUCT_PROPERTIES += \
    ro.vendor.fm.use_audio_session=true

# Fwk detect
PRODUCT_PRODUCT_PROPERTIES += \
    ro.vendor.qti.va_aosp.support=1

# Graphics
PRODUCT_PRODUCT_PROPERTIES += \
    debug.sf.enable_hwc_vds=1 \
    debug.sf.enable_gl_backpressure=1 \
    debug.sf.latch_unsignaled=1 \
    debug.sf.early_app_phase_offset_ns=1500000 \
    debug.sf.early_gl_phase_offset_ns=3000000 \
    debug.sf.early_gl_app_phase_offset_ns=15000000 \
    debug.sf.early_phase_offset_ns=1500000

# LMKD
PRODUCT_PRODUCT_PROPERTIES += \
    ro.config.low_ram=false \
    ro.lmk.log_stats=true

# Media
PRODUCT_PRODUCT_PROPERTIES += \
    media.settings.xml=/system/etc/media_profiles_vendor.xml

# Netflix
PRODUCT_PRODUCT_PROPERTIES += \
    ro.netflix.bsp_rev=Q670-14477-1

# Privapp permissions whitelisting
PRODUCT_PRODUCT_PROPERTIES += \
    ro.control_privapp_permissions=log

# RIL
PRODUCT_PRODUCT_PROPERTIES += \
    ro.telephony.default_network=22,20 \
    persist.radio.add_power_save=1 \
    persist.vendor.radio.atfwd.start=false \
    persist.vendor.radio.lte_vrte_ltd=1 \
    persist.vendor.radio.cs_srv_type=1 \
    persist.vendor.radio.rat_on=combine \
    persist.vendor.radio.force_on_dc=true \
    persist.vendor.radio.redir_party_num=1 \
    persist.dbg.volte_avail_ovr=1 \
    persist.dbg.vt_avail_ovr=1 \
    persist.dbg.wfc_avail_ovr=1

# Surfaceflinger
PRODUCT_PRODUCT_PROPERTIES += \
    ro.surface_flinger.max_frame_buffer_acquired_buffers=3 \
    ro.surface_flinger.vsync_event_phase_offset_ns=2000000 \
    ro.surface_flinger.vsync_sf_event_phase_offset_ns=6000000

# SSR
PRODUCT_PRODUCT_PROPERTIES += \
    persist.vendor.ssr.enable_ramdumps=0 \
    persist.vendor.ssr.restart_level=ALL_ENABLE

# WFD
PRODUCT_PRODUCT_PROPERTIES += \
    persist.hwc.enable_vds=1

# Zygote
PRODUCT_PRODUCT_PROPERTIES += \
    persist.device_config.runtime_native.usap_pool_enabled=true
