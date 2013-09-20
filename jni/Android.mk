LOCAL_PATH := $(call my-dir)
CUR_PATH := $(LOCAL_PATH)
LOCAL_NEON_CFLAGS := -mfloat-abi=softfp -mfpu=neon -march=armv7
LOCAL_CFLAGS=-ffast-math -O3 -funroll-loops
LOCAL_ARM_MODE := arm
include $(call all-subdir-makefiles)