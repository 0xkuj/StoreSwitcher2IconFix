TARGET = iphone:14.5:14.5
ARCHS = arm64 arm64e
INSTALL_TARGET_PROCESSES = AppStore
GO_EASY_ON_ME=1

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = StoreSwitcher2IconFix

StoreSwitcher2IconFix_FILES = Tweak.xm
StoreSwitcher2IconFix_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
