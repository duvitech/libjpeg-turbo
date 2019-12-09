
LOCAL_PATH:= $(call my-dir)
LIBUSB_ROOT_REL:= ../..
LIBUSB_ROOT_ABS:= $(LOCAL_PATH)/../..

# libjpeg

include $(CLEAR_VARS)

LIBUSB_ROOT_REL:= ../..
LIBUSB_ROOT_ABS:= $(LOCAL_PATH)/../..


LOCAL_SRC_FILES += \
	$(LIBUSB_ROOT_REL)/jcapimin.c \
	$(LIBUSB_ROOT_REL)/jcapistd.c \
	$(LIBUSB_ROOT_REL)/jccoefct.c \
	$(LIBUSB_ROOT_REL)/jccolor.c \
	$(LIBUSB_ROOT_REL)/jcdctmgr.c \
	$(LIBUSB_ROOT_REL)/jchuff.c \
	$(LIBUSB_ROOT_REL)/jcinit.c \
	$(LIBUSB_ROOT_REL)/jcmainct.c \
	$(LIBUSB_ROOT_REL)/jcmarker.c \
	$(LIBUSB_ROOT_REL)/jcmaster.c \
	$(LIBUSB_ROOT_REL)/jcomapi.c \
	$(LIBUSB_ROOT_REL)/jcparam.c \
	$(LIBUSB_ROOT_REL)/jcphuff.c \
	$(LIBUSB_ROOT_REL)/jcprepct.c \
	$(LIBUSB_ROOT_REL)/jcsample.c \
	$(LIBUSB_ROOT_REL)/jctrans.c \
	$(LIBUSB_ROOT_REL)/jdapimin.c \
	$(LIBUSB_ROOT_REL)/jdapistd.c \
	$(LIBUSB_ROOT_REL)/jdatadst.c \
	$(LIBUSB_ROOT_REL)/jdatasrc.c \
	$(LIBUSB_ROOT_REL)/jdcoefct.c \
	$(LIBUSB_ROOT_REL)/jdcolor.c \
	$(LIBUSB_ROOT_REL)/jddctmgr.c \
	$(LIBUSB_ROOT_REL)/jdhuff.c \
	$(LIBUSB_ROOT_REL)/jdinput.c \
	$(LIBUSB_ROOT_REL)/jdmainct.c \
	$(LIBUSB_ROOT_REL)/jdmarker.c \
	$(LIBUSB_ROOT_REL)/jdmaster.c \
	$(LIBUSB_ROOT_REL)/jdmerge.c \
	$(LIBUSB_ROOT_REL)/jdphuff.c \
	$(LIBUSB_ROOT_REL)/jdpostct.c \
	$(LIBUSB_ROOT_REL)/jdsample.c \
	$(LIBUSB_ROOT_REL)/jdtrans.c \
	$(LIBUSB_ROOT_REL)/jerror.c \
	$(LIBUSB_ROOT_REL)/jfdctflt.c \
	$(LIBUSB_ROOT_REL)/jfdctfst.c \
	$(LIBUSB_ROOT_REL)/jfdctint.c \
	$(LIBUSB_ROOT_REL)/jidctflt.c \
	$(LIBUSB_ROOT_REL)/jidctfst.c \
	$(LIBUSB_ROOT_REL)/jidctint.c \
	$(LIBUSB_ROOT_REL)/jidctred.c \
	$(LIBUSB_ROOT_REL)/jquant1.c \
	$(LIBUSB_ROOT_REL)/jquant2.c \
	$(LIBUSB_ROOT_REL)/jutils.c \
	$(LIBUSB_ROOT_REL)/jmemmgr.c \
	$(LIBUSB_ROOT_REL)/jmemnobs.c \
	$(LIBUSB_ROOT_REL)/jaricom.c \
	$(LIBUSB_ROOT_REL)/jcarith.c \
	$(LIBUSB_ROOT_REL)/jdarith.c \
	$(LIBUSB_ROOT_REL)/turbojpeg.c \
	$(LIBUSB_ROOT_REL)/transupp.c \
	$(LIBUSB_ROOT_REL)/jdatadst-tj.c \
	$(LIBUSB_ROOT_REL)/jdatasrc-tj.c \

LOCAL_C_INCLUDES += \
  $(LIBUSB_ROOT_ABS)/ \
  $(LIBUSB_ROOT_ABS)/include \
  $(LIBUSB_ROOT_ABS)/simd

LOCAL_EXPORT_C_INCLUDES := \
  $(LIBUSB_ROOT_ABS)/ \
  $(LIBUSB_ROOT_ABS)/include \
  $(LIBUSB_ROOT_ABS)/simd


ifeq ($(TARGET_ARCH_ABI),armeabi)

#LOCAL_ARM_NEON := true
LOCAL_SRC_FILES += $(LIBUSB_ROOT_REL)/simd/jsimd_arm.c $(LIBUSB_ROOT_REL)/simd/jsimd_arm_neon.S
LOCAL_CFLAGS += \
	-DSIZEOF_SIZE_T=4 \

else ifeq ($(TARGET_ARCH_ABI),armeabi-v7a)
#LOCAL_ARM_NEON := true
LOCAL_SRC_FILES += $(LIBUSB_ROOT_REL)/simd/jsimd_arm.c $(LIBUSB_ROOT_REL)/simd/jsimd_arm_neon.S

LOCAL_CFLAGS += \
	-DSIZEOF_SIZE_T=4 \

else ifeq ($(TARGET_ARCH_ABI),arm64-v8a)

#LOCAL_ARM_NEON := true
LOCAL_SRC_FILES += $(LIBUSB_ROOT_REL)/simd/jsimd_arm64.c $(LIBUSB_ROOT_REL)/simd/jsimd_arm64_neon.S

LOCAL_CFLAGS += \
	-DSIZEOF_SIZE_T=8 \

else ifeq ($(TARGET_ARCH_ABI),x86_64)
LOCAL_SRC_FILES += \
	$(LIBUSB_ROOT_REL)/simd/jsimd_x86_64.c \
	$(LIBUSB_ROOT_REL)/simd/jfdctflt-sse-64.asm \
	$(LIBUSB_ROOT_REL)/simd/jccolor-sse2-64.asm \
	$(LIBUSB_ROOT_REL)/simd/jcgray-sse2-64.asm \
	$(LIBUSB_ROOT_REL)/simd/jcsample-sse2-64.asm \
	$(LIBUSB_ROOT_REL)/simd/jdcolor-sse2-64.asm \
	$(LIBUSB_ROOT_REL)/simd/jdmerge-sse2-64.asm \
	$(LIBUSB_ROOT_REL)/simd/jdsample-sse2-64.asm \
	$(LIBUSB_ROOT_REL)/simd/jfdctfst-sse2-64.asm \
	$(LIBUSB_ROOT_REL)/simd/jfdctint-sse2-64.asm \
	$(LIBUSB_ROOT_REL)/simd/jidctflt-sse2-64.asm \
	$(LIBUSB_ROOT_REL)/simd/jidctfst-sse2-64.asm \
	$(LIBUSB_ROOT_REL)/simd/jidctint-sse2-64.asm \
	$(LIBUSB_ROOT_REL)/simd/jidctred-sse2-64.asm \
	$(LIBUSB_ROOT_REL)/simd/jquantf-sse2-64.asm \
	$(LIBUSB_ROOT_REL)/simd/jquanti-sse2-64.asm \
	$(LIBUSB_ROOT_REL)/simd/jchuff-sse2-64.asm 

LOCAL_CFLAGS += \
	-DSIZEOF_SIZE_T=8 \

LOCAL_ASMFLAGS += -D__x86_64__

else ifeq ($(TARGET_ARCH_ABI),x86)

LOCAL_SRC_FILES += \
	$(LIBUSB_ROOT_REL)/simd/jsimd_i386.c \
	$(LIBUSB_ROOT_REL)/simd/jsimdcpu.asm \
	$(LIBUSB_ROOT_REL)/simd/jfdctflt-3dn.asm \
	$(LIBUSB_ROOT_REL)/simd/jidctflt-3dn.asm \
	$(LIBUSB_ROOT_REL)/simd/jquant-3dn.asm \
	$(LIBUSB_ROOT_REL)/simd/jccolor-mmx.asm \
	$(LIBUSB_ROOT_REL)/simd/jcgray-mmx.asm \
	$(LIBUSB_ROOT_REL)/simd/jcsample-mmx.asm \
	$(LIBUSB_ROOT_REL)/simd/jdcolor-mmx.asm \
	$(LIBUSB_ROOT_REL)/simd/jdmerge-mmx.asm \
	$(LIBUSB_ROOT_REL)/simd/jdsample-mmx.asm \
	$(LIBUSB_ROOT_REL)/simd/jfdctfst-mmx.asm \
	$(LIBUSB_ROOT_REL)/simd/jfdctint-mmx.asm \
	$(LIBUSB_ROOT_REL)/simd/jidctfst-mmx.asm \
	$(LIBUSB_ROOT_REL)/simd/jidctint-mmx.asm \
	$(LIBUSB_ROOT_REL)/simd/jidctred-mmx.asm \
	$(LIBUSB_ROOT_REL)/simd/jquant-mmx.asm \
	$(LIBUSB_ROOT_REL)/simd/jfdctflt-sse.asm \
	$(LIBUSB_ROOT_REL)/simd/jidctflt-sse.asm \
	$(LIBUSB_ROOT_REL)/simd/jquant-sse.asm \
	$(LIBUSB_ROOT_REL)/simd/jccolor-sse2.asm \
	$(LIBUSB_ROOT_REL)/simd/jcgray-sse2.asm \
	$(LIBUSB_ROOT_REL)/simd/jcsample-sse2.asm \
	$(LIBUSB_ROOT_REL)/simd/jdcolor-sse2.asm \
	$(LIBUSB_ROOT_REL)/simd/jdmerge-sse2.asm \
	$(LIBUSB_ROOT_REL)/simd/jdsample-sse2.asm \
	$(LIBUSB_ROOT_REL)/simd/jfdctfst-sse2.asm \
	$(LIBUSB_ROOT_REL)/simd/jfdctint-sse2.asm \
	$(LIBUSB_ROOT_REL)/simd/jidctflt-sse2.asm \
	$(LIBUSB_ROOT_REL)/simd/jidctfst-sse2.asm \
	$(LIBUSB_ROOT_REL)/simd/jidctint-sse2.asm \
	$(LIBUSB_ROOT_REL)/simd/jidctred-sse2.asm \
	$(LIBUSB_ROOT_REL)/simd/jquantf-sse2.asm \
	$(LIBUSB_ROOT_REL)/simd/jquanti-sse2.asm \
	$(LIBUSB_ROOT_REL)/simd/jchuff-sse2.asm 

LOCAL_CFLAGS += \
	-DSIZEOF_SIZE_T=4 \

else ifeq ($(TARGET_ARCH_ABI),mips)

else
LOCAL_SRC_FILES += $(LIBUSB_ROOT_REL)/jsimd_none.c

endif

LOCAL_LDLIBS := -llog

LOCAL_MODULE := jpeg-turbo
LOCAL_ARM_MODE := arm
LOCAL_ASMFLAGS += -DELF



LOCAL_CPPFLAGS += -Wno-incompatible-pointer-types
LOCAL_DISABLE_FATAL_LINKER_WARNINGS := true

include $(BUILD_SHARED_LIBRARY)