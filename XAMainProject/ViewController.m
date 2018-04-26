//
//  ViewController.m
//  XAMainProject
//
//  Created by zhulei on 2018/4/26.
//  Copyright © 2018年 zs. All rights reserved.
//

#import "ViewController.h"
#import "CTMediator+XA.h"


@interface ViewController ()
@property (nonatomic,strong) UIButton *xBtn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupViews];
}

-(void)setupViews
{
    self.view.backgroundColor = [UIColor whiteColor];
    self.xBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.xBtn.frame = CGRectMake(100, 200, 100, 100);
    self.xBtn.backgroundColor = [UIColor redColor];
    [self.xBtn setTitle:@"web页面" forState:UIControlStateNormal];
    self.xBtn.titleLabel.font = [UIFont systemFontOfSize:20];
    [self.xBtn addTarget:self action:@selector(clickBtn) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.xBtn];
    
}

-(void)clickBtn
{
//    XAViewController *xaVC = [[XAViewController alloc]init];
    UIViewController *VC = [[CTMediator sharedInstance] XA_viewController];
    [self.navigationController pushViewController:VC animated:YES];
}



@end
