//
//  ViewController.m
//  UISwitch
//
//  Created by Antony x on 2018/10/28.
//  Copyright © 2018年 Antony x. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

// 同步属性和 全局变量
@synthesize mySwitch = _mySwitch;

- (void)viewDidLoad {
    [super viewDidLoad];
    /**
     UISwitch 学习
     1、UISwitch 的概念
     2、UISwitch 的创建
     3、UISwitch 的属性
     4、UISwitch 的应用
     */
    // Do any additional setup after loading the view, typically from a nib.
    
    /*
     创建一个开关对象
     */
    _mySwitch = [[UISwitch alloc] init];
    
    /*
     苹果官方的控件的位置设置
     位置 X, Y 的值可以改变
     宽度和高度值无法改变
     **/
    _mySwitch.frame = CGRectMake(100, 100, 100, 40);
    // [_mySwitch.backgroundColor = [UIColor blueColor];
    
    // 开关的状态设置属性
    // YES: 开启状态
    // NO: 关闭状态
    _mySwitch.on = NO;
    // 也可以用 set 函数
    [_mySwitch setOn:YES];
    
    /*
     设置开关状态
     参数1: 状态设置
     参数2: 是否开启动画
     **/
    [_mySwitch setOn:YES animated:YES];
    
    [self.view addSubview:_mySwitch];
    
    //设置开启状态的 风格颜色
    // [_mySwitch setOnTintColor:[UIColor redColor]];
    
    // 设置开关 圆按钮的颜色
    // [_mySwitch setThumbTintColor:[UIColor greenColor]];
    
    // 设置整体的风格颜色
    // [_mySwitch setTintColor:[UIColor purpleColor]];
    
    
    /**
     开光控件添加事件函数
     参数1: 函数实现对象
     参数2: 函数对象
     参数3: 事件响应时的 事件类型UIControlEventValueChanged： 状态发生变化时触发
     */
    [_mySwitch addTarget:self action:@selector(swChange:) forControlEvents:UIControlEventValueChanged];
}

//参数传入开关对象本身
-(void)swChange:(UISwitch*)sw {
    if (sw.on == YES) {
        NSLog(@"开关被打开!!!");
    } else {
        NSLog(@"开关被关闭!!!");
    }
}

@end
