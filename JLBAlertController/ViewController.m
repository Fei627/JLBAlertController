//
//  ViewController.m
//  JLBAlertController
//
//  Created by gaojianlong on 2017/8/4.
//  Copyright © 2017年 JLB. All rights reserved.
//

#import "ViewController.h"
#import "JLAlertView.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UIButton *normalBtn;
@property (nonatomic, strong) UITableView *table;
@property (nonatomic, strong) NSMutableArray *dataArray;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.view addSubview:self.table];
    
    NSArray *titles = @[@"无图片单按钮类型", @"无图片双按钮类型", @"无图片单按钮-可配置内容对齐方式", @"有图片单按钮类型", @"完整的构造方法"];
    self.dataArray = [NSMutableArray arrayWithArray:titles];
}

- (void)viewDidLayoutSubviews
{
    [super viewDidLayoutSubviews];
    self.table.frame = self.view.bounds;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dataArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [[UITableViewCell alloc] init];
    
    cell.textLabel.text = self.dataArray[indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    switch (indexPath.row) {
        case 0:
            [JLAlertView showAlertWithTitle:@"无图片单按钮类型" message:@"我是无图片单按钮弹窗" ok:@"知道了" completion:^{
                NSLog(@"无图片单按钮类型");
            }];
            break;
        case 1:
            [JLAlertView showAlertWithTitle:@"无图片双按钮类型" message:@"我是无图片双按钮弹窗" cancel:@"取消" ok:@"确定" completion:^{
                NSLog(@"无图片双按钮类型");
            }];
            break;
        case 2:
            [JLAlertView showAlertWithTitle:@"无图片单按钮-可配置对齐方式类型" message:@"我支持自定义内容对齐方式" ok:@"知道了" messageAlignmenti:NSTextAlignmentRight completion:nil];
            break;
        case 3:
            [JLAlertView showSuccessAlertWithTitle:@"有图片单按钮类型" message:@"成功提示" ok:@"知道了" completion:nil];
            break;
        case 4:
            [JLAlertView showAlertWithTitle:@"完整的构造方法" message:@"1、更新提示\n2、全新版本\n3、更多好玩有趣等你发现，赶快下载更新吧哈哈哈哈哈哈哈哈~" cancel:@"取消" ok:@"确定" messageAlignmenti:NSTextAlignmentLeft type:JLAlertTypeWarning buttonType:JLAlertButtonTypeDouble completion:nil];
            break;
            
        default:
            break;
    }
    
}

- (UITableView *)table
{
    if (!_table) {
        _table = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
        _table.delegate = self;
        _table.dataSource = self;
    }
    return _table;
}

@end
