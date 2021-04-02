//
//  OCSwiftComponentAController.m
//  Pods
//
//  Created by PaulLi on 2021/4/2.
//

#import "OCSwiftComponentAController.h"

@interface OCSwiftComponentAController ()

@end

@implementation OCSwiftComponentAController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.whiteColor;
}

/** 初始化方法 */
- (void)setParams:(NSDictionary *)params {
    _params = params;
    if (_params[@"title"] && [_params[@"title"] isKindOfClass:NSString.class]) {
        self.navigationItem.title = _params[@"title"];
    }
}

@end
