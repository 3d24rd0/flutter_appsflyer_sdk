#import "AppDelegate.h"
#import "GeneratedPluginRegistrant.h"
#import <AppsFlyerLib/AppsFlyerTracker.h>

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [GeneratedPluginRegistrant registerWithRegistry:self];
    return [super application:application didFinishLaunchingWithOptions:launchOptions];
}

- (BOOL)application:(UIApplication *)app
            openURL:(NSURL *)url
            options:(NSDictionary<UIApplicationOpenURLOptionsKey, id> *)options {
    [[AppsFlyerTracker sharedTracker] handleOpenUrl:url options:options];
    return YES;
}

- (void)application:(UIApplication *)application didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)deviceToken {
    [[AppsFlyerTracker sharedTracker] registerUninstall:deviceToken]; // TODO make sure this works
}

@end
