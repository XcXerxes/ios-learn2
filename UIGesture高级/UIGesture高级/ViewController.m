//
//  ViewController.m
//  UIGesture高级
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
    
    // 加载图像
    UIImage *image = [UIImage imageNamed:@"1.jpg"];
    
    // 创建图像视图 并且 赋值
    UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
    
    imageView.frame = CGRectMake(50, 80, 200, 320);
    
    // 开启手势交互功能
    imageView.userInteractionEnabled = YES;
    
    [self.view addSubview:imageView];
    
    // 创建一个缩放手势
    // 参数1: 事件对象拥有者
    // 参数2: 事件响应函数
    _pinchGes = [[UIPinchGestureRecognizer alloc] initWithTarget:self action:@selector(pinchAct:)];
    
    // 讲缩放手势添加到 imageView 中
    [imageView addGestureRecognizer:_pinchGes];
    
    // 创建旋转手势
    _rotGes = [[UIRotationGestureRecognizer alloc] initWithTarget:self action:@selector(rotAct:)];
    [imageView addGestureRecognizer:_rotGes];
    
    // 设置手势的代理
    _rotGes.delegate = self;
    _pinchGes.delegate = self;
}

// 是否可以同时响应两个手势
// 如果 YES， 可以同时
- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer {
    return YES;
}


-(void)rotAct: (UIRotationGestureRecognizer *)rot {
    UIImageView *iView = (UIImageView *) rot.view;
    
    // 计算旋转的变换矩阵并且赋值
    iView.transform = CGAffineTransformRotate(iView.transform, rot.rotation);
    
    // 旋转值 重置
    rot.rotation = 0;
}

-(void)pinchAct: (UIPinchGestureRecognizer *)pinch{
    // 获取当前被 监控的 视图对象
    UIImageView *iView = (UIImageView *)pinch.view;
    
    /*
     对 图像视图对象 进行变换矩阵计算并赋值
     CGAffineTransformScale/；通过缩放的方式 产生一个新的缩放值
     参数1：原来的矩阵
     参数2: x方向的缩放比例
     参数3：y方向的缩放比例
     返回值： 新的缩放后的值
     */
    iView.transform = CGAffineTransformScale(iView.transform, pinch.scale, pinch.scale);
    
    // 将缩放值 重置
    // scale = 1 原来的大小
    // scale < 1: 缩小效果
    // scale > 1: 放大的效果
    pinch.scale = 1;
    NSLog(@"缩放");
}

@end
