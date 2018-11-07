//
//  ViewController.h
//  自动布局子视图
//
//  Created by Antony x on 2018/11/1.
//  Copyright © 2018年 Antony x. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    /**
     自动布局子视图的概念
     自动布局视图的创建
     自动布局子视图的实现
     **/
    UIView *_superView;
    
    // 左上角label
    UILabel *_label01;
    
    // 右上角label
    UILabel *_label02;
    
    // 左下角
    UILabel *_label03;
    
    // 右下角
    UILabel *_label04;
    
    // 中间的视图
    UIView* _viewCenter;
}

@end

