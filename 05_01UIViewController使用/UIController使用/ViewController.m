//
//  ViewController.m
//  UIController使用
//
//  Created by Antony x on 2018/10/28.
//  Copyright © 2018年 Antony x. All rights reserved.
//

#import "ViewController.h"
#import "ViewC02.h"

@interface ViewController ()

@end

@implementation ViewController

/*
 视图的生命周期：
 viewDidLoad 只会在第一次加载视图时 调用！！！！
 1、显示前(未显示)
    -(void) viewWillAppear
 2、正在处于显示状态
    -(void)viewDidAppear
    -(void)viewWillDisappear
 3、已经被隐藏
    -(void)viewDidDisappear
 **/

// 第一次程序加载视图时 调用
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSLog(@"viewDidLoad 第一次加载视图!!");
}

// 屏幕被点击时， 调用此函数
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    // 创建视图控制器二
    ViewC02 *vc = [[ViewC02 alloc] init];
    
    // 显示一个新的视图控制器到屏幕上
    /**
     参数1: 新的视图控制器对象
     参数2: 使用动画切换动画效果
     参数3: 切换结束后功能调用，不需要传 nil 值即可。
     */
    [self presentViewController:vc animated:YES completion:nil];
}

// 当视图控制器的视图即将显示时， 调用此函数
// 参数： 表示是否用 动画切换后显示
-(void)viewWillAppear:(BOOL)animated {
    NSLog(@"willAppear, 视图即将显示");
}
// 视图即将消失时， 调用此函数
// 参数： 表示是否用 动画切换后消失
// 当前的状态： 视图还是显示在屏幕上
-(void)viewWillDisappear:(BOOL)animated {
    NSLog(@"willDisappear, 视图即将消失");
}

// 当视图已经显示到屏幕后， 调用此函数
// 参数： 表示是否用动画 切换 显示
// 当前状态已经显示在屏幕上了
-(void)viewDidAppear:(BOOL)animated {
    NSLog(@"didAppear, 视图已经显示了");
}

// 视图已经在屏幕消失， 调用此函数
// 参数： 表示是否用动画 切换 显示
// 当前状态 视图已经消失
-(void)viewDidDisappear:(BOOL)animated{
    NSLog(@"DidDisappear, 视图已经消失");
}


@end
