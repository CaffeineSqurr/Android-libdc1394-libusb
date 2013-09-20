LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)


ifeq ($(LIBDC_TYPE), STATIC)
  $(info Building Static libdc1394 )
else
  $(info Building Shared libdc1394 )
endif

LOCAL_ARM_MODE := arm

LOCAL_SRC_FILES:= bayer.c \
    capture.c \
    control.c \
    conversions.c \
    enumeration.c \
    format7.c \
    internal.c \
    iso.c \
    log.c \
    register.c \
    utils.c \
    vendor/avt.c \
    vendor/basler.c \
    vendor/basler_sff_registry.c \
    vendor/pixelink.c \
    usb/capture.c \
    usb/control.c

LOCAL_C_INCLUDES += $(LOCAL_PATH)/../ \
    $(LOCAL_PATH)/vendor \
    $(LOCAL_PATH)/usb
LOCAL_EXPORT_C_INCLUDES += $(LOCAL_PATH)/../ \
    $(LOCAL_PATH)/vendor \
    $(LOCAL_PATH)/usb

LOCAL_CFLAGS += -w
LOCAL_CFLAGS += -fPIC -DPIC

ifeq ($(LIBUSB_TYPE), STATIC)
  LOCAL_STATIC_LIBRARIES := libusb
else
  LOCAL_SHARED_LIBRARIES := libusb
endif

ifeq ($(TARGET_BUILD_TYPE),release)
    LOCAL_CFLAGS += -O3
endif

LOCAL_MODULE:= libdc1394
LOCAL_MODULE_TAGS := optional
LOCAL_PRELINK_MODULE := false


ifeq ($(LIBDC_TYPE), STATIC)
  include $(BUILD_STATIC_LIBRARY)
else
  include $(BUILD_SHARED_LIBRARY)
endif
