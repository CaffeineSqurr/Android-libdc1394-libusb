LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

ifeq ($(LIBUSB_TYPE), STATIC)
  $(info Building Static libusb )
else
  $(info Building Shared libusb )
endif

LOCAL_ARM_MODE := arm

LOCAL_SRC_FILES:= core.c \
	descriptor.c \
	io.c \
	sync.c \
	os/linux_usbfs.c


LOCAL_C_INCLUDES += $(LOCAL_PATH) \
	$(LOCAL_PATH)/os
LOCAL_EXPORT_C_INCLUDES  += $(LOCAL_PATH) \
  $(LOCAL_PATH)/os

LOCAL_CFLAGS += -w
LOCAL_CFLAGS += -fPIC -DPIC


ifeq ($(TARGET_BUILD_TYPE),release)
	LOCAL_CFLAGS += -O3
endif


LOCAL_MODULE:= libusb
LOCAL_MODULE_TAGS := optional
LOCAL_PRELINK_MODULE := false

ifeq ($(LIBUSB_TYPE), STATIC)
  include $(BUILD_STATIC_LIBRARY)
else
  include $(BUILD_SHARED_LIBRARY)
endif


