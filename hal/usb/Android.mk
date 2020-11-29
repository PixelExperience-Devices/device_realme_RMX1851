LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := android.hardware.usb@1.0-service.realme_sdm710.rc
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/init
LOCAL_SRC_FILES := $(LOCAL_MODULE)

include $(BUILD_PREBUILT)

LOCAL_PATH := hardware/custom/interfaces/usb/1.0-basic

include $(CLEAR_VARS)
LOCAL_MODULE := android.hardware.usb@1.0-service.realme_sdm710
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_RELATIVE_PATH := hw

LOCAL_SRC_FILES := service.cpp Usb.cpp

LOCAL_REQUIRED_MODULES := $(LOCAL_MODULE).rc

LOCAL_SHARED_LIBRARIES := \
    libcutils \
    libhidlbase \
    libhardware \
    libbase \
    libutils \
    android.hardware.usb@1.0

include $(BUILD_EXECUTABLE)
