//
//  ViewController.m
//  警告对话框和等待提示器
//
//  Created by Antony x on 2018/10/29.
//  Copyright © 2018年 Antony x. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

// 实现属性和成员变量的同步
@synthesize alertView = _alertView;
@synthesize activityIndicator = _activityIndicator;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    /*
     创建两个按钮
     **/
    for (int i=0; i<2; i++) {
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        
        btn.frame = CGRectMake(100, 100+100*i, 100, 40);
        if (i == 0) {
            [btn setTitle:@"警告对话框" forState:UIControlStateNormal];
        } else if (i == 1) {
            [btn setTitle:@"等待提示器" forState:UIControlStateNormal];
        }
        btn.tag = 101 + i;
        
        [btn addTarget:self action:@selector(pressBtn:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:btn];
    }
}

-(void)pressBtn: (UIButton *)btn {
    // 警告对话框
    if (btn.tag == 101) {
        /*
         创建警告对话框
         参数1: 对话框标题
         参数2: 提示信息
         参数3: 处理按钮事件的代理对象
         参数4: 取消按钮的文字
         参数5: 其他按钮文字
         参数6....: 添加其他按钮
         **/
        // 旧的创建方式。_alertView = [[UIAlertController alloc] initWithTitle:@"警告" message:@"您的手机电量过低，即将关闭" delegate:nil cancelButtonTitle:@"取消" otherButtonTitles:@"OK", nil];
        _alertView = [UIAlertController alertControllerWithTitle:@"警告" message:@"您的手机电量过低，即将关闭" preferredStyle: UIAlertControllerStyleAlert];
        // 创建并添加按钮
        UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            NSLog(@"点击了 OK!!!");
            [self.alertView dismissViewControllerAnimated:YES completion:nil];
        }];
        [_alertView addAction:okAction];
        [self presentViewController:_alertView animated:YES completion:nil];
        // [_alertView];
    }
    else if (btn.tag == 102) {
        /*
         加载器创建
         **/
        _activityIndicator = [[UIActivityIndicatorView alloc] initWithFrame:CGRectMake(100, 300, 80, 80)];
        
        self.view.backgroundColor = [UIColor blackColor];
        // 设置提示器的风格：小灰， 小白， 大白
        _activityIndicator.activityIndicatorViewStyle = UIActivityIndicatorViewStyleWhiteLarge;
        [self.view addSubview:_activityIndicator];
        
        // 启动动画
        [_activityIndicator startAnimating];
        
        // 停止动画
        // [_activityIndicator stopAnimating];
    }
}


@end
