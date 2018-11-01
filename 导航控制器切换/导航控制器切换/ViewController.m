//
//  ViewController.m
//  导航控制器切换
//
//  Created by Antony x on 2018/11/1.
//  Copyright © 2018年 Antony x. All rights reserved.
//

#import "ViewController.h"
#import "VCSecond.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blueColor];
    
    // 设置导航栏的透明度
    // 默认设置透明度为 YES: 可透明的
    self.navigationController.navigationBar.translucent = NO;
    
    // 导航栏的背景风格颜色
    self.navigationController.navigationBar.barStyle = UIBarStyleBlack;
    
    // 设置标题
    self.title = @"根视图";
    
    // 添加右侧按钮
    UIBarButtonItem *rightBtn = [[UIBarButtonItem alloc] initWithTitle:@"下一集" style:UIBarButtonItemStyleDone target:self action:@selector(pressNext)];
    
    self.navigationItem.rightBarButtonItem = rightBtn;
    // Do any additional setup after loading the view, typically from a nib.
}

-(void) pressNext {
    // 创建一个新的视图控制器
    VCSecond *vcSecond = [[VCSecond alloc] init];
    
    // 使用当前视图控制器的 导航对象 跳转到 vcSecond 视图对象中
    [self.navigationController pushViewController:vcSecond animated:YES];
}

@end
