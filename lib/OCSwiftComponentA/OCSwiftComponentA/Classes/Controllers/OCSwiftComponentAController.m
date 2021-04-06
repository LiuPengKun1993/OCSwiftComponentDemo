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
    self.navigationItem.title = @"OC 控制器";
    [self addSubViews];
}

- (void)addSubViews {
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 30)];
    label.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:label];
    label.center = self.view.center;
    label.text = _params[@"title"] && [_params[@"title"] isKindOfClass:NSString.class] ? [NSString stringWithFormat:@"传参：%@", _params[@"title"]] : @"无传参";
}

@end
