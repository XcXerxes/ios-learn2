//
//  ViewController.m
//  UITextField
//
//  Created by Antony x on 2018/10/29.
//  Copyright © 2018年 Antony x. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

// 将属性 和成员变量同步
@synthesize textField = _textField;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // 创建一个 文本输入框
    self.textField = [[UITextField alloc] init];
    
    // 设置 文本输入框的 文字大小
    self.textField.font = [UIFont systemFontOfSize:15];
    
    // 设置字体的颜色
    self.textField.textColor = [UIColor blackColor];
    
    // 设置输入框的 边框风格
    /*
     UITextBorderStyleLine: 线框
     UITextBorderStyleRoundedRect: 圆角边框风格
     UITextBorderStyleBezel: 内边框风格
     UITextBorderStyleNone: 无边框
     **/
    self.textField.borderStyle = UITextBorderStyleNone;
    
    // 设置虚拟键盘的风格
    /*
     UIKeyboardTypeDefault: 默认风格
     UIKeyboardTypePhonePad: 字母和数字 组合风格
     UIKeyboardTypeNumberPad: 纯数字风格
     **/
    self.textField.keyboardType = UIKeyboardTypePhonePad;
    
    // 设置输入框的 提示文字
    self.textField.placeholder = @"请输入用户名...";
    
    // 是否作为 暗文 输入
    self.textField.secureTextEntry = NO
    ;
    
    // 设置 文本输入框 的 内容文字
    // self.textField.text = @"用户名";
    
    // 设置文本输入框的位置 和 大小
    self.textField.frame = CGRectMake(100, 100, 180, 40);
    
    
    [self.view addSubview: self.textField];
    
    // 设置文本输入框的代理协议
    self.textField.delegate = self;
}

- (void)textFieldDidBeginEditing:(UITextField *)textField {
    NSLog(@"开始编辑！！");
}

- (void)textFieldDidEndEditing:(UITextField *)textField {
    self.textField.text = @"";
    NSLog(@"编辑输入结束！！！");
}

// 是否可以进行输入
// 如果返回YES, 可以进行输入， 默认为 YES
// 如果返回为 NO , 禁止输入
-(BOOL)textFieldShouldBeginEditing:(UITextField *)textField {
    return YES;
}

// 是否可以结束输入
// 如果为 YES, 可以结束输入， 默认为YES
// 如果为 NO, 不能结束输入文字
-(BOOL)textFieldShouldEndEditing:(UITextField *)textField {
    NSInteger textLength = self.textField.text.length;
    return  textLength > 6 ? YES : NO;
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    // 使虚拟键盘回收， 不再作为第一消息响应者
    [self.textField resignFirstResponder];
}

@end
