LOCAL_PATH := $(call my-dir)


#include $(CLEAR_VARS)
#LOCAL_MODULE := foo-prebuilt
#LOCAL_SRC_FILES := $(TARGET_ARCH_ABI)/libfoo.so
#LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
#TARGET_ARCH := arm
#include $(PREBUILT_SHARED_LIBRARY)
#
include $(CLEAR_VARS)
LOCAL_MODULE := blas
LOCAL_SRC_FILES := libblas.a
TARGET_ARCH := arm
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := clapack
LOCAL_SRC_FILES := libclapack.a
TARGET_ARCH := arm
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := f2c
LOCAL_SRC_FILES := libf2c.a
TARGET_ARCH := arm
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := lapack
LOCAL_SRC_FILES := liblapack.a
LOCAL_STATIC_LIBRARIES := blas f2c 
TARGET_ARCH := arm
include $(PREBUILT_STATIC_LIBRARY)


#include $(CLEAR_VARS)
#LOCAL_MODULE := arma
#LOCAL_EXPORT_CFLAGS := -DARMA_DONT_USE_WRAPPER -DARMA_USE_BLAS -DARMA_USE_LAPACK #-lblas -llapack
#LOCAL_STATIC_LIBRARIES := blas lapack
#LOCAL_EXPORT_C_INCLUDES := ../ext/armadillo-4.500.1/include
#include $(BUILT_STATIC_LIBRARY)



include $(CLEAR_VARS)
LOCAL_MODULE := sensors
LOCAL_SRC_FILES := sensors.cpp
LOCAL_CFLAGS += -fexceptions -DARMA_DONT_USE_WRAPPER #-DARMA_USE_BLAS -DARMA_USE_LAPACK  #-I ../ext/armadillo-4.500.1/include
#LOCAL_C_INCLUDES := ../ext/armadillo-4.500.1/include
LOCAL_STATIC_LIBRARIES := clapack lapack # blas f2c
LOCAL_LDFLAGS := -llog -landroid
TARGET_ARCH := arm
include $(BUILD_SHARED_LIBRARY)