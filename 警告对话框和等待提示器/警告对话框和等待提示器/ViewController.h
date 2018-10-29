//
//  ViewController.h
//  警告对话框和等待提示器
//
//  Created by Antony x on 2018/10/29.
//  Copyright © 2018年 Antony x. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    /**
     定义一个警告框视图
     UIAlertView 已经 被 UIAlertController 替代了
     */
    UIAlertController *_alertView;
    
    /*
     定义一个等待提示对象
     当下载或者加载比较大的文件时 ， 可以显示此 控件
     **/
    UIActivityIndicatorView *_activityIndicator;
}

@property (retain, nonatomic) UIAlertController *alertView;
@property (retain, nonatomic) UIActivityIndicatorView *activityIndicator;

@end

