# JLBAlertController
简易的弹窗，未完待续...

头文件：

/**成功弹窗-单按钮*/
 + (instancetype)showSuccessAlertWithTitle:(NSString *)title
                                  message:(NSString *)message
                                       ok:(NSString *)ok
                               completion:(ButtonClickedCallback)completion;
/**失败弹窗-单按钮*/
 + (instancetype)showErrorAlertWithTitle:(NSString *)title
                                message:(NSString *)message
                                     ok:(NSString *)ok
                             completion:(ButtonClickedCallback)completion;
/**警告弹窗-单按钮*/
 + (instancetype)showWarningAlertWithTitle:(NSString *)title
                                message:(NSString *)message
                                       ok:(NSString *)ok
                             completion:(ButtonClickedCallback)completion;

#pragma mark -
#pragma mark -  无图片
/**无图片、单按钮的弹窗*/
 + (instancetype)showAlertWithTitle:(NSString *)title
                           message:(NSString *)message
                                ok:(NSString *)ok
                        completion:(ButtonClickedCallback)completion;

/**无图片、双按钮的弹窗*/
 + (instancetype)showAlertWithTitle:(NSString *)title
                           message:(NSString *)message
                            cancel:(NSString *)cancel
                                ok:(NSString *)ok
                        completion:(ButtonClickedCallback)completion;

/**无图片、单按钮的弹窗-自定义内容对齐方式*/
 + (instancetype)showAlertWithTitle:(NSString *)title
                           message:(NSString *)message
                                ok:(NSString *)ok
                 messageAlignmenti:(NSTextAlignment)alignment
                        completion:(ButtonClickedCallback)completion;

/**完整的构造方法-自定义内容对齐方式*/
 + (instancetype)showAlertWithTitle:(NSString *)title
                           message:(NSString *)message
                            cancel:(NSString *)cancel
                                ok:(NSString *)ok
                 messageAlignmenti:(NSTextAlignment)alignment
                              type:(JLAlertType)type
                        buttonType:(JLAlertButtonType)buttonType
                        completion:(ButtonClickedCallback)completion;
                        
               
使用方式：            
[JLAlertView showAlertWithTitle:@"无图片单按钮类型" message:@"我是无图片单按钮弹窗" ok:@"知道了" completion:nil];
               
                        
