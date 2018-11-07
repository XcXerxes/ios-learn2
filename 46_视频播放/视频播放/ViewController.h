//
//  ViewController.h
//  视频播放
//
//  Created by Antony x on 2018/11/7.
//  Copyright © 2018年 Antony x. All rights reserved.
//

#import <UIKit/UIKit.h>
// 导入苹果官方的播放器头文件
// 主要封装了音频视频的播放器
// 封装了播放音视频的编码解码的基础类库
#import "MediaPlayer/MediaPlayer.h"
#import "AVFoundation/AVFoundation.h"

@interface ViewController : UIViewController
{
    // 定义一个视频播放器对象
    MPMoviePlayerController *_playerController;
    
    // 定义一个播放器 视图控制器
    MPMoviePlayerViewController *_playerViewController;
    
    // 定义播放器对象
    AVPlayer *_player;
    
    // 定义播放器单元对象
    AVPlayerItem *_playerItem;
    
    // 播放器视图对象
    AVPlayerLayer *_playerLayer;
}

@end

