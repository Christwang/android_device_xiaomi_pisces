# Copyright (C) 2008 The Android Open Source Project
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

LOCAL_PATH:= $(call my-dir)

# required by Nvidia Tegra 4 audio nvoice blob (built for AOSP 4.4)
include $(CLEAR_VARS)
LOCAL_SRC_FILES := shim_icuuc.c
LOCAL_MODULE := libshim_icuuc
LOCAL_SHARED_LIBRARIES := libicuuc
LOCAL_C_INCLUDES := external/icu/icu4c/source/common
LOCAL_MODULE_TAGS := optional
include $(BUILD_SHARED_LIBRARY)

# required by libdirac
include $(CLEAR_VARS)
LOCAL_SRC_FILES := shim_list.c
LOCAL_MODULE := libshim_list
LOCAL_SHARED_LIBRARIES := libcutils
LOCAL_MODULE_TAGS := optional
include $(BUILD_SHARED_LIBRARY)

