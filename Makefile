include $(THEOS)/makefiles/common.mk

TWEAK_NAME = CydiaModifier
CydiaModifier_FILES = CydiaModifier.xm
CydiaModifier_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
