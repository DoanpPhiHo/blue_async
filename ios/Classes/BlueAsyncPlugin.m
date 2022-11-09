#import "BlueAsyncPlugin.h"
#if __has_include(<blue_async/blue_async-Swift.h>)
#import <blue_async/blue_async-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "blue_async-Swift.h"
#endif

@implementation BlueAsyncPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftBlueAsyncPlugin registerWithRegistrar:registrar];
}
@end
