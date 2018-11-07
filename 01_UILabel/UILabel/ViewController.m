//
//  ViewController.m
//  UILabel
//
//  Created by xiacan on 2018/10/27.
//  Copyright © 2018 iotek. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(void) createUILabel {
    // 初始化一个 UILable 对象， 同时定义它的位置 和 大小
    UILabel *label = [[UILabel alloc]initWithFrame: CGRectMake(100, 100, 120, 30)];
    
    // 设置 它的 背景颜色
    label.backgroundColor = [UIColor grayColor];
    // 设置 它的文字内容
    label.text = @"Hello World";
    
    // 设置 label 文字的大小， 使用系统默认字体， 大小为12
    label.font = [UIFont systemFontOfSize: 12];
    
    // 设置 label 文字的颜色
    label.textColor = [UIColor blueColor];
    
    // label 的高级属性
    // 阴影的颜色
    label.shadowColor= [UIColor grayColor];
    // 阴影的偏移量
    label.shadowOffset= CGSizeMake(0, 2);
    
    // 设置 文字居中对齐。默认是靠左对齐的
    label.textAlignment = NSTextAlignmentCenter;
    
    // 文字居右对齐
    label.textAlignment = NSTextAlignmentRight;
    
    // 设置 label 文字显示的行数, 默认为1行显示
    // 设置为0 时， 文字会尽量按照 文字的长度来 显示 行数
    label.numberOfLines = 2;
    
    // 将 Label 显示在屏幕上
    [self.view addSubview:label];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self createUILabel];
    // Do any additional setup after loading the view, typically from a nib.
}


@end
