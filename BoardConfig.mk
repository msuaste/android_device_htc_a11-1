TARGET_OTA_ASSERT_DEVICE := a11,a11chl,a11ul

TARGET_BOARD_PLATFORM := msm8226

BOARD_VENDOR := htc

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := cortex-a7

TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := MSM8226

BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=qcom user_debug=31 ehci-hcd.park=3 androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x02008000 --dt device/htc/a11/dtb --tags_offset 0x01e00000
TARGET_KERNEL_CONFIG := cyanogenmod_a11ul_defconfig
TARGET_KERNEL_SOURCE := kernel/htc/a11

BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_CACHEIMAGE_PARTITION_SIZE := 113246208
BOARD_RECOVERY_BLDRMSG_OFFSET := 2048
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2147483648
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1207959552
BOARD_FLASH_BLOCK_SIZE := 512
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# libinit_a11
TARGET_UNIFIED_DEVICE := true
TARGET_INIT_VENDOR_LIB := libinit_a11
TARGET_LIBINIT_DEFINES_FILE := device/htc/a11/init/init_a11.cpp

# QCOM hardware
BOARD_USES_QCOM_HARDWARE := true
TARGET_ENABLE_QC_AV_ENHANCEMENTS := true
TARGET_QCOM_AUDIO_VARIANT := caf
TARGET_QCOM_DISPLAY_VARIANT := caf-new
TARGET_QCOM_MEDIA_VARIANT := caf-new
TARGET_USES_QCOM_BSP := true
TARGET_RIL_VARIANT := caf

# Audio
AUDIO_FEATURE_DISABLED_MULTI_VOICE_SESSIONS := true
BOARD_USES_ALSA_AUDIO := true
AUDIO_FEATURE_LOW_LATENCY_PRIMARY := true
AUDIO_FEATURE_ENABLED_HWDEP_CAL := true
AUDIO_FEATURE_ENABLED_LOW_LATENCY_CAPTURE := true
AUDIO_FEATURE_ENABLED_FM := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_QCOM := true
BLUETOOTH_HCI_USE_MCT := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/htc/a11/bluetooth

# Charge mode
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/htc_lpm/lpm_mode

# Font
EXTENDED_FONT_FOOTPRINT := true

# Graphics
TARGET_USES_ION := true
TARGET_USES_C2D_COMPOSITION := true
USE_OPENGL_RENDERER := true
OVERRIDE_RS_DRIVER := libRSDriver_adreno.so
BOARD_EGL_CFG := device/htc/a11/configs/egl.cfg

# Includes
TARGET_SPECIFIC_HEADER_PATH := device/htc/a11/include

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := device/htc/a11/releasetools

# Webkit
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true

# Hardware
BOARD_HARDWARE_CLASS := device/htc/a11/cmhw

# SELinux
include device/qcom/sepolicy/sepolicy.mk
include vendor/cm/sepolicy/sepolicy.mk
BOARD_SEPOLICY_DIRS += device/htc/a11/sepolicy

# Recovery
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
RECOVERY_GRAPHICS_USE_LINELENGTH := true
RECOVERY_SDCARD_ON_DATA := true

# TWRP config
DEVICE_RESOLUTION := 480x854
TW_NO_USB_STORAGE := true
TW_NO_SCREEN_BLANK := true
TW_MAX_BRIGHTNESS := 255
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_IGNORE_MT_POSITION_0 := true
TW_INCLUDE_DUMLOCK := true

# Logging
COMMON_GLOBAL_CFLAGS += -DHTCLOG

# Power
TARGET_POWERHAL_VARIANT := qcom

# RIL
BOARD_PROVIDES_LIBRIL := true
BOARD_RIL_CLASS := ../../../device/htc/a11/ril/

# Charge mode
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/htc_lpm/lpm_mode

# RPC
TARGET_NO_RPC := true

# Time services
BOARD_USES_QC_TIME_SERVICES := true

# Wifi
BOARD_HAS_QCOM_WLAN := true
BOARD_HAS_QCOM_WLAN_SDK := true
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_qcwcn
BOARD_WLAN_DEVICE := qcwcn
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_qcwcn
WIFI_DRIVER_FW_PATH_AP := "ap"
WIFI_DRIVER_FW_PATH_STA := "sta"

# Memory
MALLOC_IMPL := dlmalloc

# Properties
TARGET_SYSTEM_PROP += device/htc/a11/system.prop

# inherit from the proprietary version
-include vendor/htc/a11/BoardConfigVendor.mk
