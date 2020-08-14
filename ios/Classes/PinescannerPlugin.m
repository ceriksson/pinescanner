#import "PinescannerPlugin.h"
#if __has_include(<pinescanner/pinescanner-Swift.h>)
#import <pinescanner/pinescanner-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "pinescanner-Swift.h"
#endif

@implementation PinescannerPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftPinescannerPlugin registerWithRegistrar:registrar];
}
@end
