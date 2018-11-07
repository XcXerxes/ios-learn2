//
//  ViewController.m
//  视频播放
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
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    // 创建一个字符串， 保存视频的网路地址
    NSString *strURL = @"https://media.w3.org/2010/05/sintel/trailer.mp4";
    
    // 将字符串地址转换为 网址链接
    // NSURL *url = [NSURL URLWithString:strURL];
    
    // 创建一个视频播放器对象
    // _playerController = [[MPMoviePlayerController alloc] initWithContentURL:url];
    
    // 设置视频播放器的位置大小
    // _playerController.view.frame = self.view.bounds;
    
    // 处理编解码，预加载视频
    // [_playerController prepareToPlay];
    // 将视频播放器添加到 视图中
    // [self.view addSubview:_playerController.view];
    [self createPlayer];
    
}

-(void) createPlayer {
    // 创建字符串， 保存视频的网络地址
    NSString *strURL = @"https://media.w3.org/2010/05/sintel/trailer.mp4";
    
    // 将字符串转换为 url
    NSURL *url = [[NSURL alloc] initWithString:strURL];
    
    // 初始化播放单元对象， 并传入 网络视频地址
    // 参数：网络地址 url
    _playerItem = [AVPlayerItem playerItemWithURL:url];
    
    // 初始化播放器对象 并传入 视频播放单元对象
    _player = [[AVPlayer alloc] initWithPlayerItem:_playerItem];
    
    // 显示画面
    _playerLayer = [AVPlayerLayer playerLayerWithPlayer:_player];
    
    // 设置视频的填充方式
    _playerLayer.videoGravity = AVLayerVideoGravityResizeAspect;
    
    // 设置位置大小
    _playerLayer.frame = self.view.bounds;
    
    // 添加到当前视图
    [self.view.layer addSublayer:_playerLayer];
    
    [_player play];
    
    // 设置播放暂停按钮
    // NSArray *array = [NSArray arrayWithObjects:@"播放", "暂停", nil];
}

@end
