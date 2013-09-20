LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_ARM_MODE := arm

LOCAL_SRC_FILES:= core.c \
	descriptor.c \
	io.c \
	sync.c \
	os/linux_usbfs.c


LOCAL_C_INCLUDES += $(LOCAL_PATH) \
	$(LOCAL_PATH)/os

LOCAL_CFLAGS += -W -Wall
LOCAL_CFLAGS += -fPIC -DPIC


ifeq ($(TARGET_BUILD_TYPE),release)
	LOCAL_CFLAGS += -O3
endif

LOCAL_MODULE:= libusb
LOCAL_MODULE_TAGS := optional
LOCAL_PRELINK_MODULE := false
include $(BUILD_SHARED_LIBRARY)


