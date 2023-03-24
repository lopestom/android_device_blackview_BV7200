LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE), BV7200)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif
