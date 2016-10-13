#
# Copyright 2016 The Android Open Source Project
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

$(call inherit-product, device/generic/brillo/brillo_base.mk)

PRODUCT_NAME := raspberrypi3
PRODUCT_BRAND := Brillo

PRODUCT_DEVICE := raspberrypi3

########################################
include device/rpi/raspberrypi-common/raspberrypi.mk

PRODUCT_COPY_FILES += \
  device/rpi/raspberrypi3/base_product/weaved.conf:system/etc/weaved/weaved.conf

include vendor/raspberrypi/firmware/products.mk

########################################

# logd for write to /data/misc/logd
#ifneq (,$(filter userdebug eng,$(TARGET_BUILD_VARIANT)))
#  ADDITIONAL_BUILD_PROPERTIES += logd.logpersistd.enable=true
#  ADDITIONAL_BUILD_PROPERTIES += logd.logpersistd=logcatd
#endif
