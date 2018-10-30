//
//  ViewController.m
//  UITouch
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
    
    // 加载一张图片到屏幕
    UIImage *image = [UIImage imageNamed:@"1.jpg"];
    UIImageView *iView = [[UIImageView alloc] initWithImage:image];
    
    // 设置图片视图的位置和大小
    iView.frame = CGRectMake(50, 100, 220, 300);
    
    iView.tag = 101;
    
    [self.view addSubview:iView];
}


// 当点击屏幕开始的瞬间 调用此函数
/**
 一次点击的过程包括：
 手指触碰屏幕 ---> 手机接触到屏幕并且没有离开(按住屏幕时，包括按住屏幕并且移动手指) ---> 手指离开屏幕的瞬间
 */

// touchesBegan: 手指触碰屏幕时调用
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    // 获取任何一个点击对象
    // 只有一个点击对象， 获得的对象就是我们的点击对象
    UITouch *touch = [touches anyObject];
    
    // tapCount: 记录当前点击的次数
    if (touch.tapCount == 1) {
        NSLog(@"单次点击");
    } else if (touch.tapCount == 2) {
        NSLog(@"双击");
    }
    _mPtLast = [touch locationInView:self.view];
    
    NSLog(@"touch began!!");
}


// touchesMoved: 手机接触到屏幕并且没有离开(按住屏幕时，包括按住屏幕并且移动手指)
- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [touches anyObject];
    /**
     获取当前手指在屏幕上的相对坐标
     相对于当前视图的坐标
     */
    CGPoint pt = [touch locationInView:self.view];
    
    NSLog(@"x ==== %f, y ===== %f", pt.x, pt.y);
    
    UIImageView *iView = [self.view viewWithTag:101];
    
    // 判断 手势 是否在 图片内部
    if ((pt.x > iView.frame.origin.x && pt.x < iView.frame.origin.x + iView.frame.size.width)
        && (pt.y > iView.frame.origin.y && pt.y < iView.frame.origin.y + iView.frame.size.height)
        ) {
        // 每次移动的偏移量大小
        float xOffset = pt.x - _mPtLast.x;
        float yOffset = pt.y - _mPtLast.y;
        
        _mPtLast = pt;
        
        iView.frame = CGRectMake(iView.frame.origin.x + xOffset, iView.frame.origin.y + yOffset, iView.frame.size.width, iView.frame.size.height);
    }
    NSLog(@"touch moved!!!");
}

//touchesEnded: 手指离开屏幕的瞬间 调用
- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"touch ended!!");
}

// 特殊情况下中断触屏事件时调用
// 电话， 紧急信息时 取消当前的 点击手势作用！！
// 紧急的数据处理
- (void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"touch cancelled!!");
}
@end
