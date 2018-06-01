#include <sys/sysctl.h>

@interface Cydia
- (void)reloadSpringBoard;
@end

%hook Cydia

- (void)reloadSpringBoard {
    system("/usr/bin/killall SpringBoard");
}

%end
