//
//  ViewController.m
//  UISlide和UIProgressView
//
//  Created by Antony x on 2018/10/29.
//  Copyright © 2018年 Antony x. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize slider = _slider;
@synthesize pView = _progressView;
@synthesize timer = _timer;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // 进度条的创建
    
    _progressView = [[UIProgressView alloc] init];
    
    /**
     位置可以设置
     高度是不可以变化的
     */
    _progressView.frame = CGRectMake(50, 100, 200, 40);
    
    /*
     进度条的风格颜色值
     **/
    // _progressView.progressTintColor = [UIColor redColor];
    _progressView.trackTintColor = [UIColor blackColor];
    /*
     进度条的进度值
     范围为0%-100%
     最小值为0
     最大值为1
     **/
    _progressView.progress = 0.5;
    
    // 进度条的风格特征
    /*
     
     **/
    _progressView.progressViewStyle = UIProgressViewStyleDefault;
    
    [self.view addSubview:_progressView];
    
//    _timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(progressHandle) userInfo:nil repeats:NO];
    
    // 创建滑动条对象
    _slider = [[UISlider alloc] init];

    /**
     位置可设置， 高度不可设置
     */
    _slider.frame = CGRectMake(10, 200, 300, 40);
    
    // 设置滑动条最大值
    _slider.maximumValue = 100;
    
    // 设置滑动条的最小值， 可以为负值
    _slider.minimumValue = 0;
    
    // 设置滑动条的滑块位置
    _slider.value = 50;
    
    // 左侧滑动条的背景颜色
    _slider.minimumTrackTintColor = [UIColor blueColor];
    
    // 右侧滑动条的背景颜色
    _slider.maximumTrackTintColor = [UIColor greenColor];
    
    // 滑块的颜色
    _slider.thumbTintColor = [UIColor orangeColor];
    
    [_slider addTarget:self action:@selector(pressSlider) forControlEvents:UIControlEventValueChanged];
    
    [self.view addSubview:_slider];
}

/**
 progress动画
 **/
-(void)progressHandle {
    _progressView.progress = _progressView.progress + .2;
}

// 滑动条事件
-(void)pressSlider {
    
    _progressView.progress = (_slider.value - _slider.minimumValue) / (_slider.maximumValue - _slider.minimumValue);
    // 滑动条的值
    NSLog(@"value ====%f", _slider.value);
}


@end
