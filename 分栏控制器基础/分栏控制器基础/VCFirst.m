//
//  VCFirst.m
//  分栏控制器基础
//
//  Created by Antony x on 2018/11/2.
//  Copyright © 2018年 Antony x. All rights reserved.
//

#import "VCFirst.h"

@interface VCFirst ()

@end

@implementation VCFirst

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    /*
     创建一个分栏按钮对象
     参数1: 文字
     参数2: 显示图片图标
     参数3: 设置按钮的 tag
     **/
    // 方法1
//    UITabBarItem *tabBarItem = [[UITabBarItem alloc] initWithTitle:@"11" image:nil tag:101];
//    self.tabBarItem = tabBarItem;
    
    /*
     根据系统风格创建分栏按钮
     参数1: 系统风格设定
     **/
    UITabBarItem *tabBarItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemContacts tag:101];
    
    // 按钮右上角的提示信息
    // 通常用来提示未读的信息
    tabBarItem.badgeValue = @"22";
    self.tabBarItem = tabBarItem;
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
