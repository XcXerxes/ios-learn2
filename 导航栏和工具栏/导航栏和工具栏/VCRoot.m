//
//  VCRoot.m
//  导航栏和工具栏
//
//  Created by Antony x on 2018/11/1.
//  Copyright © 2018年 Antony x. All rights reserved.
//

#import "VCRoot.h"
#import "VCSecond.h"

@interface VCRoot ()

@end

@implementation VCRoot

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor yellowColor];
    
    // 设置导航栏风格颜色
    /**
     UIBarStyleBlack: 黑色半透明风格
     UIBarStyleDefault: 半透明的风格
     */
    self.navigationController.navigationBar.barStyle = UIBarStyleBlackTranslucent;
    
    // 将风格设置为不透明
    self.navigationController.navigationBar.translucent = YES;
    
    // 设置导航栏的颜色
    self.navigationController.navigationBar.barTintColor = [UIColor redColor];
    
    // 设置导航元素项的 按钮的风格颜色
    self.navigationController.navigationBar.tintColor = [UIColor greenColor];
    
    // 隐藏导航栏（两种都行的!!）
    // self.navigationController.navigationBar.hidden = YES;
    // self.navigationController.navigationBarHidden = YES;
    
    UIBarButtonItem *rightBtn = [[UIBarButtonItem alloc] initWithTitle:@"右侧按钮" style:UIBarButtonItemStylePlain target:self action:nil];
    self.navigationItem.rightBarButtonItem = rightBtn;
    
    self.title = @"根视图";
    
    /*
     实现工具栏对象
     默认工具栏是 隐藏的
     **/
    self.navigationController.toolbarHidden = NO;
    
    // 工具栏设置 不透明度
    self.navigationController.toolbar.translucent = NO;
    
    UIBarButtonItem *btn01 = [[UIBarButtonItem alloc] initWithTitle:@"Left" style:UIBarButtonItemStylePlain target:self action:nil];
    
    UIBarButtonItem *btn02 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCamera target:self action:@selector(pressNext)];
    
    UIBarButtonItem *btn03 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemPlay target:self action:nil];
    
    /*
     固定宽度占位按钮！！
     **/
    UIBarButtonItem *btnf01 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:self action:nil];
    btnf01.width = 100;
    
    /*
     自动计算宽度 按钮
     **/
    UIBarButtonItem *btnf02 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:self action:nil];
    
    NSArray *arrayBtns = [NSArray arrayWithObjects:btn01, btnf02, btn02, btnf02, btn03, nil];
    
    // 将按钮数组 添加到 工具栏的对象中！！
    self.toolbarItems = arrayBtns;
    
    
    // Do any additional setup after loading the view.
}

-(void)pressNext {
    VCSecond *vc = [[VCSecond alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
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
