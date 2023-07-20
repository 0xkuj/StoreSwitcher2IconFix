
#import <UIKit/UIKit.h>

%hook AppStoreAccountViewController
- (void)viewDidLoad {
	%orig;
  for (UIBarButtonItem *barButtonItem in [self navigationItem].leftBarButtonItems) {
    if (barButtonItem.action == @selector(openSwitcher:)) {
        barButtonItem.image = [UIImage imageNamed:@"/var/jb/Library/Application Support/StoreSwitcher/switcher"];;
        break;
    }
  }
}
%end

%ctor {
  %init(AppStoreAccountViewController = objc_getClass("AppStore.AccountViewController")
	);
}