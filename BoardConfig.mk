# Copyright 2014 The Android Open Source Project
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

include device/sony/tone/PlatformConfig.mk

TARGET_BOOTLOADER_BOARD_NAME := F8131

# Platform
PRODUCT_PLATFORM := tone

WIFI_BUS := PCIE

# NFC
NXP_CHIP_TYPE := PN547C2
NXP_CHIP_TYPE_FW := PN547C2

BOARD_KERNEL_CMDLINE += androidboot.hardware=dora

# Partition information
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 7843348480
# Reserve space for data encryption (22187868160-16384)
BOARD_USERDATAIMAGE_PARTITION_SIZE := 22187851776

# Setting for tap to wake
TARGET_TAP_TO_WAKE_NODE := "/sys/devices/virtual/input/clearpad/wakeup_gesture"

#Enable Dex preoptimization
WITH_DEXPREOPT := true
