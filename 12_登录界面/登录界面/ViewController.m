//
//  ViewController.m
//  登录界面
//
//  Created by Antony x on 2018/10/30.
//  Copyright © 2018年 Antony x. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    // 用户名label
    _lbUserName = [self createLabel:60 withText:@"用户名"];
    
    // 密码label
    _lbPassword = [self createLabel:120 withText:@"密码"];
    
    // 用户名输入框
    _tfUserName = [self createTextField:60 withPlaceholder:@"请输入用户名"];
    
    // 密码输入框
    _tfPassword = [self createTextField:120 withPlaceholder:@"请输入密码"];
    _tfPassword.secureTextEntry = YES;
    
    // 登录和注册按钮
    _btLogin = [self createButton:200 withTitle:@"登录"];
    [_btLogin addTarget:self action:@selector(pressLogin) forControlEvents:UIControlEventTouchUpInside];
    
    _btRegister = [self createButton:260 withTitle:@"注册"];
    [_btRegister addTarget:self action:@selector(pressRegist) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:_lbUserName];
    [self.view addSubview:_lbPassword];
    [self.view addSubview:_tfUserName];
    [self.view addSubview:_tfPassword];
    [self.view addSubview:_btLogin];
    [self.view addSubview:_btRegister];
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    // 回收键盘对象
    [_tfUserName resignFirstResponder];
    [_tfPassword resignFirstResponder];
}

// 创建 Label的函数
-(UILabel *)createLabel: (double)offsetY withText: (NSString *)text {
    UILabel *label = [[UILabel alloc] init];
    label.frame = CGRectMake(20, offsetY, 60, 40);
    label.text = text;
    label.font = [UIFont systemFontOfSize:16];
    label.textAlignment = NSTextAlignmentLeft;
    return label;
}

// 创建 TextField 的函数
-(UITextField *)createTextField: (double)offsetY withPlaceholder:(NSString *)placeholder {
    UITextField *textField = [[UITextField alloc] init];
    textField.frame = CGRectMake(80, offsetY, 240, 40);
    textField.placeholder = placeholder;
    textField.borderStyle = UITextBorderStyleRoundedRect;
    return textField;
}

// 创建 button 的函数
-(UIButton *)createButton:(double)offsetY withTitle: (NSString *)title {
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn.frame = CGRectMake(20, offsetY, [UIScreen mainScreen].bounds.size.width - 40, 40);
    btn.backgroundColor = [UIColor orangeColor];
    btn.tintColor = [UIColor whiteColor];
    [btn setTitle:title forState:UIControlStateNormal];
    btn.titleLabel.font = [UIFont systemFontOfSize:18];
    return btn;
}

// 创建Alert 的函数
-(UIAlertController *)createAlertController:(NSString *)title withMessage: (NSString *)message  {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"确认" style:UIAlertActionStyleDefault handler:^(UIAlertAction *_Nonnull action) {
        [self dismissViewControllerAnimated:YES completion:nil];
    }];
    [alert addAction:okAction];
    return alert;
}

-(void)pressLogin{
    NSString *strName = @"antony";
    NSString *strPass = @"123456";
    
    // 获取输入框的内容
    NSString *strTextName = _tfUserName.text;
    NSString *strTextPass = _tfPassword.text;
    
    if ([strName isEqualToString:strTextName] && [strPass isEqualToString:strTextPass]) {
        NSLog(@"用户名密码正确");
        UIAlertController *alertSuccess = [self createAlertController:@"提示" withMessage:@"验证成功，登录成功"];
        [self presentViewController:alertSuccess animated:YES completion:nil];
    } else {
        UIAlertController *alertError = [self createAlertController:@"提示" withMessage:@"验证失败，用户名或密码错误"];
        [self presentViewController:alertError animated:YES completion:nil];
    }
}
-(void)pressRegist{
    
}


@end
