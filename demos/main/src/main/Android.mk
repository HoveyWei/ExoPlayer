LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional

LOCAL_SRC_FILES := $(call all-java-files-under, java)
LOCAL_STATIC_JAVA_LIBRARIES := harmanmediacommon
#ifeq ($(BOARD_USES_VENDOR_SDK), true)
#  LOCAL_STATIC_JAVA_LIBRARIES += vendorlib
#  LOCAL_PROGUARD_ENABLED := disabled
#  LOCAL_DEX_PREOPT := false
#else
  LOCAL_JAVA_LIBRARIES := android.car
#endif
LOCAL_CERTIFICATE := platform
LOCAL_STATIC_JAVA_LIBRARIES += android-support-v4
LOCAL_PACKAGE_NAME := HarmanSamplePlayer
LOCAL_PRIVILEGED_MODULE := true
LOCAL_DEX_PREOPT := false

include $(BUILD_PACKAGE)

#Declare private permissions used by Sample Player in whitelist
include $(CLEAR_VARS)
LOCAL_MODULE := privapp_permissions_sampleplayer.xml
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/permissions
LOCAL_SRC_FILES := res/xml/privapp_permissions_sampleplayer.xml
include $(BUILD_PREBUILT)