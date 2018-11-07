//
//  ViewController.h
//  定时器和视图移动
//
//  Created by Antony x on 2018/10/28.
//  Copyright © 2018年 Antony x. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    // 定义一个定时器对象
    // 可以在每隔固定时间发送一个消息
    // 通过此消息来调用相应的时间函数
    // 通过此函数 可以在固定时间段 完成一个 事件
    NSTimer *_timerView;
}

// 定时器的属性对象！！！

@property (retain,nonatomic)NSTimer* timerView;

@end

