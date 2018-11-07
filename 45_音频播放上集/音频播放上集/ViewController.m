//
//  ViewController.m
//  音频播放上集
//
//  Created by Antony x on 2018/11/7.
//  Copyright © 2018年 Antony x. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.title = @"音频播放上集";
    // 播放按钮
    _btnPlay = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _btnPlay.frame = CGRectMake(100, 100, 100, 40);
    [_btnPlay setTitle:@"播放" forState:UIControlStateNormal];
    [_btnPlay addTarget:self action:@selector(pressPlay) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_btnPlay];
    
    // 暂停按钮
    _btnPause = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _btnPause.frame = CGRectMake(100, 160, 100, 40);
    [_btnPause setTitle:@"暂停" forState:UIControlStateNormal];
    [_btnPause addTarget:self action:@selector(pressPause) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_btnPause];
    
    // 停止按钮
    _btnStop = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _btnStop.frame = CGRectMake(100, 220, 100, 40);
    [_btnStop setTitle:@"停止" forState:UIControlStateNormal];
    [_btnStop addTarget:self action:@selector(pressStop) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_btnStop];
    
    //播放进度条
    _musicProgress = [UIProgressView new];
    
    _musicProgress.frame = CGRectMake(10, 300, 300, 20);
    
    _musicProgress.progress = 0;
    
    // 创建声音控制器
    _volumeSlider = [UISlider new];
    
    _volumeSlider.frame = CGRectMake(10, 380, 300, 20);
    
    // 设置最大声音值
    _volumeSlider.maximumValue = 100;
    // 设置最小声音值
    _volumeSlider.minimumValue = 0;
    
    // 调整声音事件函数
    [_volumeSlider addTarget:self action:@selector(volumeChange:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:_musicProgress];
    [self.view addSubview:_volumeSlider];
    
    // 调用创建 音频对象
    [self createAVPlayer];
}

// 创建音频控制器
-(void) createAVPlayer {
    // 获取本地资源 wav 文件的方法
    // 参数1: 文件名
    // 参数2: 扩展名
    NSString *str = [[NSBundle mainBundle] pathForResource:@"10787" ofType:@"wav"];
    
    //将字符串转换为 file URL
    NSURL *urlMusic = [NSURL fileURLWithPath:str];
    
    NSLog(@"url====%@", urlMusic);
    // 创建音频播放器对象
    // 参数1: 音频播放地址文件
    _player = [[AVAudioPlayer alloc] initWithContentsOfURL:urlMusic error:nil];
    
    // 准备播放， 解码工作
    [_player prepareToPlay];
    
    // 循环播放的次数
    // -1 表示无限循环
    _player.numberOfLoops = -1;
    
    // 设置音量大小
    _player.volume = .5;
    
    _volumeSlider.value = _player.volume * 100;
    
    // 创建定时器
    _timer = [NSTimer scheduledTimerWithTimeInterval:.1 target:self selector:@selector(updateTime) userInfo:nil repeats:YES];
    
    // 绑定代理协议
    _player.delegate = self;
}

// 当音乐播放完成时， 调用
// 如果设置无限循环播放， 不会调用此函数
- (void)audioPlayerDidFinishPlaying:(AVAudioPlayer *)player successfully:(BOOL)flag {
    // 停止定时器
    NSLog(@"播放完成");
    [_timer invalidate];
}

// 定时器的回调函数
-(void)updateTime {
    // 设置 进度条的进度值
    _musicProgress.progress = _player.currentTime / _player.duration;
}

// 播放按钮事件函数
-(void)pressPlay {
    // 开始播放
    NSLog(@"开始播放");
    [_player play];
}

// 暂停按钮事件函数
-(void)pressPause {
    NSLog(@"暂停播放");
    // 暂停播放
    [_player pause];
}
// 停止按钮事件函数
-(void)pressStop {
    NSLog(@"停止播放");
    // 停止播放
    [_player stop];
    // 当前的播放时间清 0
    _player.currentTime = 0;
}

// 调整声音时
-(void)volumeChange: (UISlider *)slider {
    NSLog(@"%lf", slider.value);
    // 设置音量大小
    _player.volume = slider.value / 100;
}
@end
