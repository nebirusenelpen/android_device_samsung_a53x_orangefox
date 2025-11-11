#
# Copyright (C) 2022 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Dynamic partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mock \
    fastbootd

# Some useful binaries
PRODUCT_PACKAGES += shrink bxhsed

# System crypto libraries for FBEv2 decryption (Android 14)
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/root/system/lib64/libkeystore2_crypto.so:recovery/root/system/lib64/libkeystore2_crypto.so \
    $(LOCAL_PATH)/recovery/root/system/lib64/libkeymint_support.so:recovery/root/system/lib64/libkeymint_support.so \
    $(LOCAL_PATH)/recovery/root/system/lib64/libcppbor_external.so:recovery/root/system/lib64/libcppbor_external.so \
    $(LOCAL_PATH)/recovery/root/system/lib64/libcppcose_rkp.so:recovery/root/system/lib64/libcppcose_rkp.so \
    $(LOCAL_PATH)/recovery/root/system/lib64/libbinder_ndk.so:recovery/root/system/lib64/libbinder_ndk.so
