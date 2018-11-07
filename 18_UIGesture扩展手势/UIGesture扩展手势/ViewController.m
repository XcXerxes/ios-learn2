//
//  ViewController.m
//  UIGesture扩展手势
//
//  Created by Antony x on 2018/10/31.
//  Copyright © 2018年 Antony x. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIImageView *iView = [[UIImageView alloc] initWithImage: [UIImage imageNamed: @"1.jpg"]];
    iView.frame = CGRectMake(50, 50, 200, 200);
    
    [self.view addSubview:iView];
    
    iView.userInteractionEnabled = YES;
    
    // 创建一个平移手速
    // 参数1: 事件函数处理对象
    // 参数2: 事件函数
    UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(panAct:)];
    [iView addGestureRecognizer:pan];
    
    // 将移动事件手势 从 图像视图中取消
    [iView removeGestureRecognizer:pan];
    
    
    // 创建一个滑动手势
    UISwipeGestureRecognizer *swiper = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeAct:)];
    
    // 设置滑动手势接受事件的类型
    /**
     UISwipeGestureRecognizerDirectionLeft： 向左
     UISwipeGestureRecognizerDirectionRight： 向右
     UISwipeGestureRecognizerDirectionTop： 向上
     UISwipeGestureRecognizerDirectionDown： 向下
     */
    swiper.direction = UISwipeGestureRecognizerDirectionRight | UISwipeGestureRecognizerDirectionLeft;
    
    [iView addGestureRecognizer:swiper];
    
    
    // 创建一个长按手势
    UILongPressGestureRecognizer *longPress = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(pressLong:)];
    [iView addGestureRecognizer:longPress];
    
    // 设置长按手势的时间， 默认是 .5秒 的时间以上 为 长按手势
    longPress.minimumPressDuration = .5;
}

-(void)pressLong:(UILongPressGestureRecognizer *)longPress {
    /*
     手势的状态对象， 用来解决长按一次， 触发两次事件的问题！！
     *到达规定时间， .5秒 触发函数
     **/
    if (longPress.state == UIGestureRecognizerStateBegan) {
        NSLog(@"开始长按手势");
    }
    // 当手指离开视图时， 触发结束状态！！
    else if (longPress.state == UIGestureRecognizerStateEnded) {
        NSLog(@"结束长按手势");
    }
}

// 滑动事件的函数
-(void)swipeAct: (UISwipeGestureRecognizer *)swipe {
    if(swipe.direction & UISwipeGestureRecognizerDirectionLeft) {
        NSLog(@"向左滑动");
    } else if (swipe.direction & UISwipeGestureRecognizerDirectionRight) {
        NSLog(@"向右滑动！！");
    }
}

// 平移的事件函数
-(void)panAct: (UIPanGestureRecognizer *)pan {
    NSLog(@"pan!!");
    
    // 获取移动的坐标，相对于视图的坐标系
    // 参数： 相对的视图对象
    CGPoint pt = [pan translationInView:self.view];
    // NSLog(@"pt.x=======%f, px.y========%f", pt.x, pt.y);
    
    // 获取移动时的相对速度
    CGPoint pV = [pan velocityInView:self.view];
    
    // NSLog(@"pV.x=======%f, pV.y========%f", pV.x, pV.y);
}


@end
