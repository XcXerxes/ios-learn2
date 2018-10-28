//
//  ViewController.m
//  定时器和视图移动
//
//  Created by Antony x on 2018/10/28.
//  Copyright © 2018年 Antony x. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

// 属性和成员变量的同步
@synthesize timerView = _timerView;

- (void)viewDidLoad {
    [super viewDidLoad];
    /*
     本节的内容简介：
     
     *定时器的概念
     *定时器的创建
     *通过定时器移动视图
     **/
    // Do any additional setup after loading the view, typically from a nib.
    
    // 启动定时器按钮
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn.frame = CGRectMake(100, 100, 80, 40);
    [btn setTitle:@"启动定时器" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(pressStart) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn];
    
    // 停止定时器按钮
    UIButton *btnStop = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btnStop.frame = CGRectMake(100, 200, 80, 40);
    [btnStop setTitle:@"停止定时器" forState:UIControlStateNormal];
    [btnStop addTarget:self action:@selector(pressStop) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnStop];
    
    // 创建一个视图
    UIView *view = [[UIView alloc] init];
    view.frame = CGRectMake(0, 0, 80, 80);
    view.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:view];
    
    // 设置view 的标签值
    // 通过父视图对象以及 view 的标签值可以获得 相对应的 视图
    view.tag = 101;
}

// 启动定时器函数
-(void)pressStart {
    /*
     NSTimer 的类方法创建一个定时器 并且启动这个定时器
     参数1: 每隔多长时间调用定时器函数，以秒为单位
     参数2: 实现定时器函数的 对象指针
     参数3: 定时器函数对象
     参数4: 可以传入到 定时器函数中 一个 参数， or nil
     参数5: 定时器是否重复操作， YES = 重复调用 NO = 只操作一次
     返回值： 新建好的 一个 定时器对象
     **/
    self.timerView = [NSTimer scheduledTimerWithTimeInterval: 0.03 target:self selector:@selector(updateTimer:) userInfo:@"小明" repeats:YES];
}

// 定时器函数
// 可以将定时器本身作为 参数 传入
-(void)updateTimer: (NSTimer *) timer {
    NSLog(@"test!!!!, name ===%@", timer.userInfo);
    
    // 最好tag 从 100 开始
    // 通过 tag 获取 当前的视图
    UIView *view = [self.view viewWithTag:101];
    view.frame = CGRectMake(view.frame.origin.x + 1, view.frame.origin.y + 1, 80, 80);
}

// 停止定时器函数
-(void)pressStop {
    if (self.timerView != nil) {
        // 停止定时器
        [self.timerView invalidate];
    }
}


@end
