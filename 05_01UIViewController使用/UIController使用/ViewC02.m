//
//  ViewC02.m
//  UIController使用
//
//  Created by Antony x on 2018/10/28.
//  Copyright © 2018年 Antony x. All rights reserved.
//

#import "ViewC02.h"

@interface ViewC02 ()

@end

@implementation ViewC02

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 控制器2视图的背景颜色为 橙色
    self.view.backgroundColor = [UIColor orangeColor];
    // Do any additional setup after loading the view.
}

// 点击当前控制器二的 界面屏幕时
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    /*
     使当前的 控制器视图 消失
     参数1: 消失时是否加载动画
     参数2: 消失结束后 是否调用后续 动作!!
     */
    [self dismissViewControllerAnimated:YES completion:nil];
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
