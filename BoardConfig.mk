USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/lge/lenok/BoardConfigVendor.mk

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := msm8226
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a7
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

# Krait optimizations
TARGET_USE_KRAIT_BIONIC_OPTIMIZATION := true
TARGET_USE_KRAIT_PLD_SET := true
TARGET_KRAIT_BIONIC_PLDOFFS := 10
TARGET_KRAIT_BIONIC_PLDTHRESH := 10
TARGET_KRAIT_BIONIC_BBTHRESH := 64
TARGET_KRAIT_BIONIC_PLDSIZE := 64

TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := lenok

BOARD_KERNEL_CMDLINE := androidboot.hardware=lenok user_debug=31 maxcpus=4 msm_rtb.filter=0x3F console=null androidboot.console=null

BOARD_KERNEL_BASE := 0x0000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x0008000 --ramdisk_offset 0x2000000 --second_offset 0x0f00000 --tags_offset 0x01E00000

# prebuilt kernel
TARGET_PREBUILT_KERNEL := device/lge/lenok/kernel

BOARD_BOOTIMAGE_PARTITION_SIZE := 23068672
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 23068672
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 268435456
BOARD_USERDATAIMAGE_PARTITION_SIZE := 3258974208
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)

# what is this?
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true 

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"

DEVICE_RESOLUTION := 240x240
TW_X_OFFSET := 40
TW_Y_OFFSET := 40
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_NO_USB_STORAGE := true
TW_INCLUDE_JB_CRYPTO := true
BOARD_SUPPRESS_SECURE_ERASE := true
RECOVERY_SDCARD_ON_DATA := true
BOARD_USE_CUSTOM_RECOVERY_FONT := \"font_7x16.h\"
TW_EXCLUDE_MTP := true
