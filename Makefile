INSTALL_TARGET_PROCESSES = SpringBoard
PACKAGE_VERSION=$(THEOS_PACKAGE_BASE_VERSION)
ARCHS = armv7 arm64 arm64e
TARGET = iphone:clang:11.2:10.0
SYSROOT = $(THEOS)/sdks/iPhoneOS11.2.sdk

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = DeadRinger

DeadRinger_FILES = Tweak.xm
DeadRinger_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
