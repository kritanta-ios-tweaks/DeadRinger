INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = DeadRinger

DeadRinger_FILES = Tweak.xm
DeadRinger_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
