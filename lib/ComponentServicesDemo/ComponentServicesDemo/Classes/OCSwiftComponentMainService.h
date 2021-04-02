//
//  OCSwiftComponentMainService.h
//  Pods
//
//  Created by PaulLi on 2021/4/2.
//

#import <Foundation/Foundation.h>
#import <BeeHive/BeeHive.h>

NS_ASSUME_NONNULL_BEGIN

@protocol OCSwiftComponentMainService <NSObject, BHServiceProtocol>

/**
 获取跟控制器
 */
- (nonnull UIViewController *)makeRootViewController;

@end

NS_ASSUME_NONNULL_END
