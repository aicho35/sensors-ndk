#APP_STL := stlport_static
APP_STL := gnustl_static
APP_CPPFLAGS := -fexceptions -frtti -mfloat-abi=softfp -mfpu=neon #-std=gnu++0x -Wno-deprecated -ftree-vectorize -ffast-math -fsingle-precision-constant
APP_ABI := armeabi armeabi-v7a