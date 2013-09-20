LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE:= libusb
LOCAL_SRC_FILES := libusb.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)

LOCAL_ARM_MODE := arm

LOCAL_SRC_FILES:= \
    dc1394/bayer.c \
    dc1394/capture.c \
    dc1394/control.c \
    dc1394/conversions.c \
    dc1394/enumeration.c \
    dc1394/format7.c \
    dc1394/internal.c \
    dc1394/iso.c \
    dc1394/log.c \
    dc1394/register.c \
    dc1394/utils.c \
    dc1394/vendor/avt.c \
    dc1394/vendor/basler.c \
    dc1394/vendor/basler_sff_registry.c \
    dc1394/vendor/pixelink.c \
    dc1394/usb/capture.c \
    dc1394/usb/control.c

LOCAL_C_INCLUDES += $(LOCAL_PATH)/android \
    $(LOCAL_PATH)/dc1394 \
    $(LOCAL_PATH)/dc1394/vendor \
    $(LOCAL_PATH)/dc1394/usb

LOCAL_CFLAGS += -W -Wall
LOCAL_CFLAGS += -fPIC -DPIC
LOCAL_SHARED_LIBRARIES := libusb

ifeq ($(TARGET_BUILD_TYPE),release)
    LOCAL_CFLAGS += -O3
endif

LOCAL_MODULE:= libdc1394
LOCAL_MODULE_TAGS := optional
LOCAL_PRELINK_MODULE := false
include $(BUILD_SHARED_LIBRARY)
