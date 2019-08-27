#import "PluginsPlugin.h"
#import <plugins/plugins-Swift.h>

@implementation PluginsPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftPluginsPlugin registerWithRegistrar:registrar];
}
@end
