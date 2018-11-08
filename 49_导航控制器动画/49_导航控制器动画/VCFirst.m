//
//  VCFirst.m
//  49_导航控制器动画
//
//  Created by Antony x on 2018/11/8.
//  Copyright © 2018年 Antony x. All rights reserved.
//

#import "VCFirst.h"
#import "VCSecond.h"

@interface VCFirst ()

@end

@implementation VCFirst

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _imageView = [UIImageView new];
    _imageView.frame = CGRectMake(40, 40, 320, 580);
    _imageView.image = [UIImage imageNamed:@"1.jpg"];
    [self.view addSubview:_imageView];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    // 定义一个 动画变化对象， 属于 层动画对象
    // 类方法获取动画对象
    CATransition *amin = [CATransition animation];
    
    // 设置动画的时间长度
    amin.duration = 1;
    
    // 设置动画的类型
    // 决定动画的效果形式
    // cube:
    // moveIn:
    // pageCurl:
    amin.type = @"rippleEffect";
    
    // 设置动画的子类型， 例如动画的方向
    amin.subtype = kCATransitionFromLeft;
    
    // 设置动画的 运动轨迹
    amin.timingFunction = [CAMediaTimingFunction functionWithName: kCAMediaTimingFunctionEaseInEaseOut];
    
    // 将动画对象 添加到 导航层上
    [self.navigationController.view.layer addAnimation:amin forKey:nil];
    
    // 初始化 视图2 对象
    VCSecond *vcSecond = [VCSecond new];
    
    // 跳转到 视图2
    [self.navigationController pushViewController:vcSecond animated:NO];
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
