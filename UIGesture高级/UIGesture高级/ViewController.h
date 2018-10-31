//
//  ViewController.h
//  UIGesture高级
//
//  Created by Antony x on 2018/10/31.
//  Copyright © 2018年 Antony x. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIGestureRecognizerDelegate>
{
    // UIGesture 高级手势类型
    // 手势属性
    // 手势的使用
    /*
     UIGesture 基础
     1、UIPinchGesture 和 UIRotationGesture 手势属性函数
     view transform：变换矩阵属性
     RotGesture rotation: 旋转属性
     PinchGesture scale: 缩放属性
     CGAffileTransformScale(): 缩放变换函数
     CGAffileTransformRotate(): 旋转变换函数
     **/
    
    // 定义一个缩放手势， 用来对视图进行放大缩小
    // pinch: 捏合手势
    UIPinchGestureRecognizer *_pinchGes;
    
    // 定义一个旋转手势，用来对视图进行旋转
    // rotation: 旋转
    UIRotationGestureRecognizer *_rotGes;
}

@end

