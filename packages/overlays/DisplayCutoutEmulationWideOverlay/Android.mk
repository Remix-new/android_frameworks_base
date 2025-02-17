abc_device := $(patsubst %f,%,$(subst abc_,,$(TARGET_PRODUCT)))
ifneq ($(filter crosshatch emulator,$(abc_device)),)
LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_RRO_THEME := DisplayCutoutEmulationWide


LOCAL_PRODUCT_MODULE := true

LOCAL_SRC_FILES := $(call all-subdir-java-files)

LOCAL_RESOURCE_DIR := $(LOCAL_PATH)/res

LOCAL_PACKAGE_NAME := DisplayCutoutEmulationWideOverlay
LOCAL_SDK_VERSION := current

include $(BUILD_RRO_PACKAGE)
endif
