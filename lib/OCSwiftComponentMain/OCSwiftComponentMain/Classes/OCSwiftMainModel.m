//
//  OCSwiftMainModel.m
//  FBSnapshotTestCase
//
//  Created by PaulLi on 2021/4/2.
//

#import "OCSwiftMainModel.h"
#import <BeeHive/BeeHive.h>
#import "OCSwiftComponentMainService.h"
#import "OCSwiftMainViewController.h"

@interface OCSwiftMainModel ()<OCSwiftComponentMainService, BHModuleProtocol>

@end

@implementation OCSwiftMainModel

+ (void)load {
    [BeeHive registerDynamicModule:[self class]];
}

- (void)modSetUp:(BHContext *)context {
    [[BeeHive shareInstance] registerService:@protocol(OCSwiftComponentMainService) service:[OCSwiftMainModel class]];
}

- (nonnull UIViewController *)makeRootViewController {
    return [[UINavigationController alloc] initWithRootViewController:[[OCSwiftMainViewController alloc] init]];
}

@end

