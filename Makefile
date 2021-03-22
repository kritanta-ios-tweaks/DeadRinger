INSTALL_TARGET_PROCESSES = SpringBoard
PACKAGE_VERSION=$(THEOS_PACKAGE_BASE_VERSION)
ARCHS = arm64 arm64e
TARGET = iphone:clang:latest:13.0

DEBUG = 0
FINALPACKAGE = 1

PREFIX=$(THEOS)/toolchain/Xcode.xctoolchain/usr/bin/

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = DeadRinger

DeadRinger_FILES = Tweak.xm
DeadRinger_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
