//
//  ViewController.m
//  JLBAlertController
//
//  Created by gaojianlong on 2017/8/4.
//  Copyright © 2017年 JLB. All rights reserved.
//

#import "ViewController.h"
#import "JLBAlertController.h"

@interface ViewController ()

@property (nonatomic, strong) UIButton *normalBtn;


@end

@implementation ViewController

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.view addSubview:self.normalBtn];
}

- (void)normalBtnClick
{
    JLBAlertController *alert = [JLBAlertController alertControllerWithTitle:@"提示" message:@"确定要退出吗？"];
    [self presentViewController:alert animated:YES completion:nil];
}


- (UIButton *)normalBtn
{
    if (!_normalBtn) {
        _normalBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _normalBtn.frame = CGRectMake(20, 64, 100, 40);
        [_normalBtn setTitle:@"默认弹窗样式" forState:UIControlStateNormal];
        [_normalBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        _normalBtn.backgroundColor = [UIColor orangeColor];
        _normalBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        [_normalBtn addTarget:self action:@selector(normalBtnClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return _normalBtn;
}


@end
