//
//  VCRoot.m
//  导航控制器基础
//
//  Created by Antony x on 2018/11/1.
//  Copyright © 2018年 Antony x. All rights reserved.
//

#import "VCRoot.h"

@interface VCRoot ()

@end

@implementation VCRoot

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // 设置导航栏的标题文字
    self.title = @"根视图";
    
    // 设置导航元素项目的标题
    // 如果没有设置 navigationItem Title 系统会使用 self.title  作为标题
    // 如果不为空， navigationItem Title 会覆盖 self.title 的 标题
    self.navigationItem.title = @"根视图";
    
    /*
     创建一个导航栏左侧的按钮
     根据title 文字来创建按钮
     参数1: 按钮上的文字
     参数2: 按钮风格
     参数3: 事件拥有者
     参数4: 按钮事件
     **/
    UIBarButtonItem *leftBtn = [[UIBarButtonItem alloc] initWithTitle:@"左侧" style:UIBarButtonItemStyleDone target:self action:@selector(pressLeft)];
    // 赋值 button
    self.navigationItem.leftBarButtonItem = leftBtn;
    
    /**
     创建一个导航栏 右侧按钮
     根据系统风格来创建按钮
     只需要指定风格样式，系统风格的按钮或标题文字不能改变
     参数1: 按钮风格
     参数2: 事件拥有者
     参数3: 按钮事件
     */
    UIBarButtonItem *rightBtn = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemSave target:self action:@selector(pressRight)];
    self.navigationItem.rightBarButtonItem = rightBtn;
    
    // 标签对象
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(10, 10, 50, 40)];
    label.text = @"test";
    label.textAlignment = NSTextAlignmentCenter;
    
    // 将任何类型的控件添加到导航栏！！！
    UIBarButtonItem *item03 = [[UIBarButtonItem alloc] initWithCustomView:label];
    
    // 创建按钮数组
    NSArray *arrayBtn = [NSArray arrayWithObjects:rightBtn, item03, nil];
    
    // 将右侧按钮组 添加到 右侧导航栏
    self.navigationItem.rightBarButtonItems = arrayBtn;
    
    
}
// 左侧按钮点击事件
-(void)pressLeft {
    NSLog(@"点击左侧");
}

// 右侧按钮点击事件
-(void)pressRight {
    NSLog(@"点击右侧！！");
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
