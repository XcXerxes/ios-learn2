//
//  ViewController.m
//  手动布局子视图
//
//  Created by Antony x on 2018/11/1.
//  Copyright © 2018年 Antony x. All rights reserved.
//

#import "ViewController.h"
#import "SuperView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    SuperView *sView = [[SuperView alloc] init];
    sView.frame = CGRectMake(20, 20, 180, 280);
    sView.backgroundColor = [UIColor blueColor];
    
    [sView createSubViews];
    [self.view addSubview:sView];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn.frame = CGRectMake(240, 480, 80, 40);
    [btn setTitle:@"放大" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(pressLarge) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    UIButton *btn02 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    btn02.frame = CGRectMake(240, 520, 80, 40);
    
    [btn02 setTitle:@"缩小" forState:UIControlStateNormal];
    
    [btn02 addTarget:self action:@selector(pressSmall) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn02];
    
    sView.tag = 101;
}
-(void)pressLarge {
    SuperView *sView = [self.view viewWithTag:101];
    // 放大动画
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1];
    sView.frame = CGRectMake(20, 20, 300, 480);
    [UIView commitAnimations];
}

-(void)pressSmall {
    
    SuperView *sView = [self.view viewWithTag:101];
    // 缩小动画
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1];
    sView.frame = CGRectMake(20, 20, 180, 280);
    [UIView commitAnimations];
}

@end
