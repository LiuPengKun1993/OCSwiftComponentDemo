//
//  AppDelegate.m
//  OCSwiftComponentDemo
//
//  Created by PaulLi on 2021/4/2.
//

#import "AppDelegate.h"
#import <BeeHive/BeeHive.h>
#import <ComponentServicesDemo/OCSwiftComponentMainService.h>

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:UIScreen.mainScreen.bounds];

    [super application:application didFinishLaunchingWithOptions:launchOptions];

    [BHContext shareInstance].application = application;
    [BHContext shareInstance].launchOptions = launchOptions;
    [BeeHive shareInstance].enableException = NO;
    [[BeeHive shareInstance] setContext:[BHContext shareInstance]];

#if BHDEBUG
    [BeeHive shareInstance].context.env = BHEnvironmentDev;
#endif
    id<OCSwiftComponentMainService> service = [[BeeHive shareInstance] createService:@protocol(OCSwiftComponentMainService)];
    self.window.rootViewController = [service makeRootViewController];
    [self.window makeKeyAndVisible];
    return YES;
}


@end
