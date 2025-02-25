#import "UpgradePlugin.h"
#if __has_include(<upgrade_manager/upgrade-Swift.h>)
#import <upgrade_manager/upgrade-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "upgrade-Swift.h"
#endif

@implementation UpgradePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftUpgradePlugin registerWithRegistrar:registrar];
}
@end
