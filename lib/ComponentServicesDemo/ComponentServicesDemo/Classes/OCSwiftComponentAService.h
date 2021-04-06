//
//  OCSwiftComponentAService.h
//  BeeHive
//
//  Created by PaulLi on 2021/4/2.
//

#import <Foundation/Foundation.h>
#import <BeeHive/BeeHive.h>

NS_ASSUME_NONNULL_BEGIN

@protocol OCSwiftComponentAService <NSObject, BHServiceProtocol>

/**
 获取 ComponentA 主控制器
 */
- (nonnull UIViewController *)pushComponentAController;

/**
 获取 Swift 控制器
 */
- (nonnull UIViewController *)pushSwiftComponentAController;

/**
 获取 ComponentA 主控制器
 @param params 传参
 */
- (nonnull UIViewController *)pushComponentAControllerWithParams:(NSDictionary *)params;

@end

NS_ASSUME_NONNULL_END
