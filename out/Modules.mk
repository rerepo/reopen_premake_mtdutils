LOCAL_PATH := $(call my-dir)

###################### mkfs.jffs2 ######################
include $(CLEAR_VARS)

LOCAL_MODULE := mkjffs2
LOCAL_SRC_FILES := sbin/mkfs.jffs2

LOCAL_MODULE_STEM := mkfs
LOCAL_MODULE_SUFFIX := .jffs2
# or
#LOCAL_BUILT_MODULE_STEM := mkfs.jffs2
#LOCAL_INSTALLED_MODULE_STEM := mkfs.jffs2

LOCAL_MODULE_CLASS := EXECUTABLES

LOCAL_IS_HOST_MODULE := true

include $(BUILD_PREBUILT)

###################### mkfs.ubifs ######################
include $(CLEAR_VARS)

LOCAL_MODULE := mkubifs
LOCAL_SRC_FILES := sbin/mkfs.ubifs

LOCAL_MODULE_STEM := mkfs
LOCAL_MODULE_SUFFIX := .ubifs
# or
#LOCAL_BUILT_MODULE_STEM := mkfs.ubifs
#LOCAL_INSTALLED_MODULE_STEM := mkfs.ubifs

LOCAL_MODULE_CLASS := EXECUTABLES

LOCAL_IS_HOST_MODULE := true

include $(BUILD_PREBUILT)

###################### ubinize ######################
include $(CLEAR_VARS)

LOCAL_PREBUILT_EXECUTABLES := ubinize:sbin/ubinize
#LOCAL_MODULE_TAGS := debug

include $(BUILD_HOST_PREBUILT)

#$(call dist-for-goals, dist_files, $(LOCAL_BUILT_MODULE))
