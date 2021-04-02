//
//  OCSwiftComponentAModule.m
//  OCSwiftComponentA
//
//  Created by PaulLi on 2021/4/2.
//

#import "OCSwiftComponentAModule.h"
#import "OCSwiftComponentAService.h"
#import "OCSwiftComponentAController.h"
#import <BeeHive/BeeHive.h>
#import "OCSwiftComponentAService.h"

@interface OCSwiftComponentAModule ()<OCSwiftComponentAService, BHModuleProtocol>

@end

@implementation OCSwiftComponentAModule

+ (void)load {
    [BeeHive registerDynamicModule:[self class]];
}

- (void)modSetUp:(BHContext *)context {
    [[BeeHive shareInstance] registerService:@protocol(OCSwiftComponentAService) service:[OCSwiftComponentAModule class]];
}

- (nonnull UIViewController *)pushComponentAController {
    OCSwiftComponentAController *vc = [[OCSwiftComponentAController alloc] init];
    vc.params = @{@"title":@"OCSwiftComponentA"};
    return vc;
}

- (nonnull UIViewController *)pushComponentAControllerWithParams:(NSDictionary *)params {
    OCSwiftComponentAController *vc = [[OCSwiftComponentAController alloc] init];
    vc.params = params;
    return vc;
}

@end
