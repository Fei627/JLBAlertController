//
//  JLBAlertController.m
//  JLBAlertController
//
//  Created by gaojianlong on 2017/8/4.
//  Copyright © 2017年 JLB. All rights reserved.
//

#import "JLBAlertController.h"

@interface JLBAlertController ()

@property (nonatomic, strong) UIView *superBackground;

@property (nonatomic, strong) UIView *alert;

@end

@implementation JLBAlertController

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.view addSubview:self.superBackground];
    [self.superBackground addSubview:self.alert];
}

+ (instancetype)alertControllerWithTitle:(NSString *)title
{
    JLBAlertController *alert = [JLBAlertController alertControllerWithTitle:title message:nil];
    return alert;
}

+ (instancetype)alertControllerWithTitle:(NSString *)title message:(NSString *)message
{
    JLBAlertController *alert = [JLBAlertController alertControllerWithTitle:title
                                                                     message:message
                                                               okButtonTitle:@"ok"
                                                           cancelButtonTitle:@"cancel"
                                                                  titleColor:[UIColor blackColor]
                                                                   titleFont:[UIFont systemFontOfSize:16]
                                                                messageColor:[UIColor grayColor]
                                                                 messageFont:[UIFont systemFontOfSize:14]
                                                             buttonTextColor:[UIColor blueColor]
                                                              buttonTextFont:[UIFont systemFontOfSize:14]];
    return alert;
}

+ (instancetype)alertControllerWithTitle:(NSString *)title
                                 message:(NSString *)message
                           okButtonTitle:(NSString *)okButtonTitle
                       cancelButtonTitle:(NSString *)cancelButtonTitle
                              titleColor:(UIColor *)titleColor
                               titleFont:(UIFont *)titleFont
                            messageColor:(UIColor *)messageColor
                             messageFont:(UIFont *)messageFont
                         buttonTextColor:(UIColor *)buttonTextColor
                          buttonTextFont:(UIFont *)buttonTextFont
{
    JLBAlertController *alert = [[JLBAlertController alloc] init];
    alert.alert.frame = CGRectMake(0, 0, 300, 200);
    alert.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    alert.modalPresentationStyle = UIModalPresentationOverFullScreen;
    
    UILabel *titleLabel = [[UILabel alloc] init];
    titleLabel.frame = CGRectMake(10, 0, CGRectGetWidth(alert.alert.frame) - 20, 50);
    titleLabel.text = title;
    titleLabel.textAlignment = NSTextAlignmentCenter;
    titleLabel.textColor = titleColor;
    titleLabel.font = titleFont;
    [alert.alert addSubview:titleLabel];
    
    if (message && ![message isEqualToString:@""]) {
        UILabel *messageLabel = [[UILabel alloc] init];
        messageLabel.frame = CGRectMake(10, CGRectGetMaxY(titleLabel.frame), CGRectGetWidth(titleLabel.frame), 100);
        messageLabel.text = message;
        messageLabel.textAlignment = NSTextAlignmentCenter;
        messageLabel.numberOfLines = 0;
        messageLabel.textColor = messageColor;
        messageLabel.font = messageFont;
        
        [alert.alert addSubview:messageLabel];
    } else {
        alert.alert.frame = CGRectMake(0, 0, 300, 100);
    }
    
    if (okButtonTitle && ![okButtonTitle isEqualToString:@""]) {
        UIButton *okButton = [UIButton buttonWithType:UIButtonTypeCustom];
        okButton.frame = CGRectMake(0, CGRectGetHeight(alert.alert.frame) - 50, 150, 50);
        [okButton setTitle:okButtonTitle forState:UIControlStateNormal];
        [okButton setTitleColor:buttonTextColor forState:UIControlStateNormal];
        okButton.titleLabel.font = buttonTextFont;
        
        [alert.alert addSubview:okButton];
    }
    
    if (cancelButtonTitle && ![cancelButtonTitle isEqualToString:@""]) {
        UIButton *cancelButton = [UIButton buttonWithType:UIButtonTypeCustom];
        cancelButton.frame = CGRectMake(150, CGRectGetHeight(alert.alert.frame) - 50, 150, 50);
        [cancelButton setTitle:cancelButtonTitle forState:UIControlStateNormal];
        [cancelButton setTitleColor:buttonTextColor forState:UIControlStateNormal];
        cancelButton.titleLabel.font = buttonTextFont;
        
        [alert.alert addSubview:cancelButton];
    }
    
    alert.alert.center = alert.superBackground.center;
    return alert;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [super touchesBegan:touches withEvent:event];
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (UIView *)superBackground
{
    if (!_superBackground) {
        _superBackground = [[UIView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
        _superBackground.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.3];
    }
    return _superBackground;
}

- (UIView *)alert
{
    if (!_alert) {
        _alert = [[UIView alloc] init];
        _alert.backgroundColor = [UIColor whiteColor];
        _alert.layer.masksToBounds = YES;
        _alert.layer.cornerRadius = 10;
    }
    return _alert;
}


@end
