//
//  ViewController.h
//  UIScrollView的高级功能
//
//  Created by Antony x on 2018/10/30.
//  Copyright © 2018年 Antony x. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
// 当前视图控制器要实现协议UIScrollView 的 协议函数
<UIScrollViewDelegate>

{
    // 声明成员变量
    UIScrollView *_scrollView;
}
@end

