LOCAL_PATH := $(call my-dir)
CUR_PATH := $(LOCAL_PATH)
LOCAL_CFLAGS=-ffast-math -funroll-loops
LOCAL_ARM_MODE := arm
include $(call all-subdir-makefiles)
