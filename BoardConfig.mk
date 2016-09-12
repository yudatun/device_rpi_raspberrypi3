#
# Copyright (C) 2015 The Android Open Source Project
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

#
# config.mk
#
# Product-specific compile-time difinitions.
#

$(call set_soc, bcm, bcm2837)

# Add wifi controlller
$(call add_peripheral, bcm, wifi/rtl8xxxu)

include device/rpi/raspberrypi-common/BoardConfig.mk

TARGET_BOARD_PLATFORM := bcm2837
TARGET_BOOTLOADER_BOARD_NAME := bcm2837
TARGET_BOARD_INFO_FILE := device/rpi/raspberrypi3/board-info.txt
