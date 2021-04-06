//
//  OCSwiftMainViewController.m
//  FBSnapshotTestCase
//
//  Created by PaulLi on 2021/4/2.
//

#import "OCSwiftMainViewController.h"
#import "OCSwiftComponentAService.h"
#import <BeeHive/BeeHive.h>

@interface OCSwiftMainViewController ()

@end

@implementation OCSwiftMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationItem.title = @"使用 BeeHive 进行组件化练习";
    [self addSubViews];
}

- (void)addSubViews {

    NSArray *titleArray = @[@"OC 控制器- 有参数", @"OC 控制器 - 无参数", @"Swift 控制器"];
    for (int i = 0; i < titleArray.count; i ++) {
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        [button setTitle:titleArray[i] forState:UIControlStateNormal];
        button.tag = i;
        [self.view addSubview:button];
        [button addTarget:self action:@selector(buttonClicker:) forControlEvents:UIControlEventTouchUpInside];
        button.frame = CGRectMake(50, i * 100 + 200, self.view.frame.size.width-100, 30);
        button.backgroundColor = UIColor.orangeColor;
    }
}

- (void)buttonClicker:(UIButton *)button {
    id<OCSwiftComponentAService> service = [[BeeHive shareInstance] createService:@protocol(OCSwiftComponentAService)];
    switch (button.tag) {
        case 0:
            [self.navigationController pushViewController:[service pushComponentAControllerWithParams:@{@"title":@"组件化练习"}] animated:YES];
            break;
        case 1:
            [self.navigationController pushViewController:[service pushComponentAController] animated:YES];
            break;
        case 2:
            [self.navigationController pushViewController:[service pushSwiftComponentAController] animated:YES];
            break;
        default:
            break;
    }
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"页面被点击了");
}

@end
