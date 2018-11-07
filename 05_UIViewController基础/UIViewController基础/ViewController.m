//
//  ViewController.m
//  UIViewController基础
//
//  Created by Antony x on 2018/10/28.
//  Copyright © 2018年 Antony x. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


// 当视图控制器 第一次被加载显示视图时， 调用此函数
// 布局初始化视图来使用， 初始化资源使用。
- (void)viewDidLoad {
    // 调用 父类的 加载视图函数！！
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blueColor];
    // Do any additional setup after loading the view, typically from a nib.
}


@end
