//
//  VCThird.m
//  导航控制器切换
//
//  Created by Antony x on 2018/11/1.
//  Copyright © 2018年 Antony x. All rights reserved.
//

#import "VCThird.h"

@interface VCThird ()

@end

@implementation VCThird

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor purpleColor];
    self.title = @"第三级";
    
    UIBarButtonItem *leftBtn = [[UIBarButtonItem alloc] initWithTitle:@"返回" style:UIBarButtonItemStylePlain target:self action:@selector(pressBack)];
    
    // 当自己设定左侧按钮时，
    // 返回按钮会被自己的 左侧按钮 替代
    self.navigationItem.leftBarButtonItem = leftBtn;
    
    UIBarButtonItem *rightBtn = [[UIBarButtonItem alloc] initWithTitle:@"返回根视图" style:UIBarButtonItemStylePlain target:self action:@selector(pressRoot)];
    
    self.navigationItem.rightBarButtonItem = rightBtn;
    // Do any additional setup after loading the view.
}
-(void)pressBack {
    // 返回到上一级 界面
    // 弹出了 栈
    [self.navigationController popViewControllerAnimated:YES];
}

// 返回根视图
-(void)pressRoot {
    
    // 直接返回到根视图控制器
    [self.navigationController popToRootViewControllerAnimated:YES];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
