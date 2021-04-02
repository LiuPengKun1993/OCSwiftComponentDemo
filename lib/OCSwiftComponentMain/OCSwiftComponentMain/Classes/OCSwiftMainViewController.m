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
    self.view.backgroundColor = [UIColor redColor];
    self.navigationItem.title = @"主页";
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"有参跳转" style:UIBarButtonItemStyleDone target:self action:@selector(leftButtonClicked)];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"无参跳转" style:UIBarButtonItemStyleDone target:self action:@selector(rightButtonClicked)];
    [self addSubViews];
}

- (void)addSubViews {
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 30)];
    label.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:label];
    label.center = self.view.center;
    label.text = @"使用 BeeHive 进行组件化练习";
}

- (void)leftButtonClicked {
    id<OCSwiftComponentAService> service = [[BeeHive shareInstance] createService:@protocol(OCSwiftComponentAService)];
    [self.navigationController pushViewController:[service pushComponentAControllerWithParams:@{@"title":@"组件化练习"}] animated:YES];
}

- (void)rightButtonClicked {
    id<OCSwiftComponentAService> service = [[BeeHive shareInstance] createService:@protocol(OCSwiftComponentAService)];
    [self.navigationController pushViewController:[service pushComponentAController] animated:YES];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"页面被点击了");
}

@end
