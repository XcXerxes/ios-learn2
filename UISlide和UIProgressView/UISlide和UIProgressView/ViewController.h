//
//  ViewController.h
//  UISlide和UIProgressView
//
//  Created by Antony x on 2018/10/29.
//  Copyright © 2018年 Antony x. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    /*
     进度条对象
     一般用来表示下载或者视频播放的进度
     **/
    UIProgressView *_progressView;
    
    /**
     滑动条对象
     一般用来调整大小， 音乐音量的
     */
    UISlider *_slider;
    
    /**
     定时器属性
     **/
    NSTimer *_timer;
}

// 定义一个滑动条属性
@property (retain, nonatomic) UIProgressView *pView;

// 定义一个进度条属性
@property (retain, nonatomic) UISlider *slider;

@property (retain, nonatomic) NSTimer *timer;

@end

