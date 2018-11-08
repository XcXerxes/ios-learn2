//
//  ViewController.m
//  48_UIView动画基础
//
//  Created by Antony x on 2018/11/8.
//  Copyright © 2018年 Antony x. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _imageView = [UIImageView new];
    
    _imageView.frame = CGRectMake(100, 100, 80, 80);
    
    _imageView.image = [UIImage imageNamed:@"1.jpg"];
    
    [self.view addSubview:_imageView];
    
    // 设置移动按钮
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    btn.frame = CGRectMake(120, 360, 80, 40);
    
    [btn setTitle:@"移动" forState:UIControlStateNormal];
    
    [btn addTarget:self action:@selector(pressMove) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn];
    
    // 创建放大缩小 按钮
    UIButton *btnScale = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    btnScale.frame = CGRectMake(120, 400, 80, 40);
    
    [btnScale setTitle:@"缩放" forState:UIControlStateNormal];
    
    [btnScale addTarget:self action:@selector(pressScale) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btnScale];
    
}
-(void)pressMove {
    /*
     开始动画函数， 准备动画的开始工作
     **/
    [UIView beginAnimations:nil context:nil];
    // 动画的 实际的目标结果
    // 设置动画的时间函数
    // 参数：以 秒 为单位
    [UIView setAnimationDuration:2];
    
    // 设置动画开始的延迟时间长度
    // 进行延迟动画的处理
    // 参数： 以 秒 为 单位
    [UIView setAnimationDelay:0];
    
    // 设置动画运行的 轨迹方式
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
    
    // 设置动画的代理对象
    [UIView setAnimationDelegate:self];
    
    // 设置动画结束后 调用的 代理函数
    [UIView setAnimationDidStopSelector:@selector(stopAnimation)];
    
    // 目标对象
    _imageView.frame = CGRectMake(300, 100, 80, 80);
    
    // 提交 运行动画
    [UIView commitAnimations];
}

-(void)pressScale {
    /*
     开始动画函数， 准备动画的开始工作
     **/
    [UIView beginAnimations:nil context:nil];
    // 动画的 实际的目标结果
    // 设置动画的时间函数
    // 参数：以 秒 为单位
    [UIView setAnimationDuration:2];
    
    // 设置动画开始的延迟时间长度
    // 进行延迟动画的处理
    // 参数： 以 秒 为 单位
    [UIView setAnimationDelay:0];
    
    // 设置动画运行的 轨迹方式
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
    
    // 设置动画的代理对象
    [UIView setAnimationDelegate:self];
    
    // 设置动画结束后 调用的 代理函数
    [UIView setAnimationDidStopSelector:@selector(stopAnimation)];
    
    // 目标对象
    _imageView.frame = CGRectMake(100, 100, 160, 160);
    
    // 提交 运行动画
    [UIView commitAnimations];
}

// 代理y协议函数
-(void)stopAnimation {
    NSLog(@"动画结束");
}

@end
