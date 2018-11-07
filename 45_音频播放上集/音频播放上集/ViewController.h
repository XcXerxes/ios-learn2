//
//  ViewController.h
//  音频播放上集
//
//  Created by Antony x on 2018/11/7.
//  Copyright © 2018年 Antony x. All rights reserved.
//

#import <UIKit/UIKit.h>
// 导入视频， 音频系统库文件
#import "AVFoundation/AVFoundation.h"
@interface ViewController : UIViewController
// 音频播放协议
<AVAudioPlayerDelegate>
{
    // 播放按钮
    UIButton *_btnPlay;
    
    // 暂停播放
    UIButton *_btnPause;
    
    // 停止播放
    UIButton *_btnStop;
    
    // 播放进度
    UIProgressView *_musicProgress;
    
    // 声音大小的滑动条
    UISlider *_volumeSlider;
    
    // 静音开关
    UISwitch *_vomunOn;
    
    // 音频播放器对象
    AVAudioPlayer *_player;
    
    // 定时器， 更新进度条
    NSTimer *_timer;
}

@end

