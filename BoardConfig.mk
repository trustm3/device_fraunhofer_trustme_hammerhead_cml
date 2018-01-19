#
# This file is part of trust|me
# Copyright(c) 2013 - 2017 Fraunhofer AISEC
# Fraunhofer-Gesellschaft zur Förderung der angewandten Forschung e.V.
#
# This program is free software; you can redistribute it and/or modify it
# under the terms and conditions of the GNU General Public License,
# version 2 (GPL 2), as published by the Free Software Foundation.
#
# This program is distributed in the hope it will be useful, but WITHOUT
# ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
# FITNESS FOR A PARTICULAR PURPOSE. See the GPL 2 license for more details.
#
# You should have received a copy of the GNU General Public License along with
# this program; if not, see <http://www.gnu.org/licenses/>
#
# The full GNU General Public License is included in this distribution in
# the file called "COPYING".
#
# Contact Information:
# Fraunhofer AISEC <trustme@aisec.fraunhofer.de>
#

TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi

TARGET_NO_BOOTLOADER := true
#TARGET_NO_KERNEL := true

TARGET_CPU_SMP := true

TARGET_CPU_VARIANT := krait

#TARGET_USES_LOGD := false

USE_OPENGL_RENDERER := true
BOARD_USE_LEGACY_UI := true

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 23068672
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 64000000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 64000000
BOARD_FLASH_BLOCK_SIZE := 4096

#BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=hammerhead user_debug=31 maxcpus=2 msm_watchdog_v2.enable=1
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x02900000 --tags_offset 0x02700000

#BOARD_KERNEL_CMDLINE := androidboot.hardware=hammerhead user_debug=31 zcache selinux=0
BOARD_KERNEL_CMDLINE := androidboot.hardware=hammerhead user_debug=31 console=ttyHSL0,115200,n8 androidboot.hardware=hammerhead user_debug=31 maxcpus=2 msm_watchdog_v2.enable=1 zcache selinux_enforcing=0 
#BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom user_debug=31 zcache

# Use the following to always boot into charger mode (LPM Mode) for debug reasons..
#BOARD_KERNEL_CMDLINE += androidboot.bootchg=true

BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x02900000 --tags_offset 0x02700000

# Charging mode
#BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/power_supply/battery/batt_lp_charging
#BOARD_BATTERY_DEVICE_NAME := "battery"
BOARD_CHARGER_DISABLE_INIT_BLANK := true
BOARD_CHARGER_ENABLE_SUSPEND := true

TARGET_RECOVERY_FSTAB = device/fraunhofer/trustme_hammerhead_cml/fstab.recovery.hammerhead

# include this befor any device specific sepolicy configuration
-include device/fraunhofer/trustme_generic/TrustmeBoardConfig.mk

# SELinux
BOARD_SEPOLICY_DIRS += \
       device/fraunhofer/trustme_hammerhead_cml/sepolicy \
       device/lge/hammerhead/sepolicy

USE_CLANG_PLATFORM_BUILD := true
