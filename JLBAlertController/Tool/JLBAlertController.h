//
//  JLBAlertController.h
//  JLBAlertController
//
//  Created by gaojianlong on 2017/8/4.
//  Copyright © 2017年 JLB. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JLBAlertController : UIViewController


/**
 默认弹窗样式

 @param title 标题
 @return 返回的弹窗实例
 */
+ (instancetype)alertControllerWithTitle:(NSString *)title;

+ (instancetype)alertControllerWithTitle:(NSString *)title message:(NSString *)message;

@end
