//
//  ViewController.h
//  步进器和分栏控件
//
//  Created by Antony x on 2018/10/29.
//  Copyright © 2018年 Antony x. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    /*
     步进器对象
     按照一定的数值来调整某个数据
     */
    UIStepper *_stepper;
    
    /*
     分栏控制器定义
     **/
    UISegmentedControl *_segControl;
}

@property (retain, nonatomic) UIStepper *stepper;
@property (retain, nonatomic) UISegmentedControl *segControl;

@end

