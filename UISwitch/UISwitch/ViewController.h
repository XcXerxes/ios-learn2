//
//  ViewController.h
//  UISwitch
//
//  Created by Antony x on 2018/10/28.
//  Copyright © 2018年 Antony x. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    // 定义一个开关控件
    // 可以进行状态的改变
    // 开， 关两种状态
    // 所有 UIKit 的控件都是以 UI 开头的
    // 苹果官方的控件都定义在 UIKit 框架库中
    UISwitch *_mySwitch;
}

@property (retain, nonatomic) UISwitch *mySwitch;

@end

