//
//  ViewController.m
//  UIGesture
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
    
    // 加载图片对象
    UIImage *image = [UIImage imageNamed:@"1.jpg"];
    
    // 创建图像视图对象 和 赋值
    _imageView = [[UIImageView alloc] initWithImage:image];
    
    _imageView.frame = CGRectMake(50, 80, 200, 300);
    
    [self.view addSubview:_imageView];
    
    // 开启交互事件响应开关
    // YES: 可以响应事件
    // NO: 不能接受相应事件 默认值为NO
    _imageView.userInteractionEnabled = YES;
    
    /*
     创建一个点击手势对象
     UITapGestureRecognizer: 点击手势类
     功能：识别点击手势事件
     参数1: 响应事件的拥有者对象， self 表示当前视图控制器
     参数2: 响应事件的 调用函数
     */
    UITapGestureRecognizer *tapOneGes = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapOneAct:)];
    
    // 表示手势识别事件的事件类型： 几次点击时触发
    // 默认值： 1
    tapOneGes.numberOfTapsRequired = 1;
    
    // 表示几个手指点击时触发事件函数
    // 默认值： 1
    tapOneGes.numberOfTouchesRequired = 1;
    
    // 将点击事件 添加到视图对象中
    [_imageView addGestureRecognizer:tapOneGes];
    
    /*
     创建双击手势对象
     */
    UITapGestureRecognizer *tapTwo = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapTwoAct:)];
    tapTwo.numberOfTapsRequired = 2;
    tapTwo.numberOfTouchesRequired = 1;
    [_imageView addGestureRecognizer:tapTwo];
    
    /*
     当单击操作 遇到 双击操作时，单击操作失效。。
     避免事件互相影响！！！！！
     */
    [tapOneGes requireGestureRecognizerToFail:tapTwo];
}

// 单击的响应事件
-(void)tapOneAct: (UITapGestureRecognizer *)tap {
    // 获取手势监控的视图
    UIImageView *imageView = (UIImageView *) tap.view;
    
    // 开始动画过程
    [UIView beginAnimations:nil context:nil];
    // 设置动画时间
    [UIView setAnimationDuration:2];
    imageView.frame = CGRectMake(0, 0, 320, 568);
    
    // 结束动画过程
    [UIView commitAnimations];
}

// 双击的响应事件
-(void)tapTwoAct:(UITapGestureRecognizer *)tap {
    NSLog(@"双击！！");
    // 获取手势的监控视图
    UIImageView *imageView = (UIImageView *) tap.view;
    
    // 开始动画
    [UIView beginAnimations:nil context:nil];
    // 设置动画时间
    [UIView setAnimationDuration:2];
    imageView.frame = CGRectMake(50, 80, 200, 300);
    
    // 结束动画过程
    [UIView commitAnimations];
}

@end
