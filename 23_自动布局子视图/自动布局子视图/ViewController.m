//
//  ViewController.m
//  自动布局子视图
//
//  Created by Antony x on 2018/11/1.
//  Copyright © 2018年 Antony x. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _superView = [[UIView alloc] init];
    
    _superView.frame = CGRectMake(20, 20, 180, 280);
    
    _superView.backgroundColor = [UIColor blueColor];
    
    // 创建label01
    _label01 = [[UILabel alloc] init];
    // 位置相对于父视图
    _label01.frame = CGRectMake(0, 0, 40, 40);
    
    _label01.text = @"1";
    _label01.textAlignment = NSTextAlignmentCenter;
    _label01.backgroundColor = [UIColor greenColor];
    
    // 创建label02
    
    _label02 = [[UILabel alloc] init];
    
    _label02.frame = CGRectMake(180 - 40, 0, 40, 40);
    
    _label02.text = @"2";
    
    _label02.backgroundColor = [UIColor greenColor];
    
    // 创建label03
    
    _label03 = [[UILabel alloc] init];
    
    _label03.frame = CGRectMake(180-40, 280-40, 40, 40);
    
    _label03.text = @"3";
    _label03.backgroundColor = [UIColor greenColor];
    
    // 创建label04
    _label04 = [[UILabel alloc] init];
    
    _label04.frame = CGRectMake(0, 280-40, 40, 40);
    
    _label04.text = @"4";
    _label04.backgroundColor = [UIColor greenColor];
    
    // 创建 中间视图
    
    _viewCenter = [[UIView alloc] init];
    
    _viewCenter.frame = CGRectMake(0, 0, _superView.bounds.size.width, 40);
    _viewCenter.center = CGPointMake(180/2, 280/2);
    _viewCenter.backgroundColor = [UIColor orangeColor];
    
    [_superView addSubview:_label01];
    [_superView addSubview:_label02];
    [_superView addSubview:_label03];
    [_superView addSubview:_label04];
    
    [_superView addSubview:_viewCenter];
    
    [self.view addSubview:_superView];
    
    /*
     设置自动布局属性
     通过此变量来调整视图在 父视图 中的位置和大小
     **/
    
    // 设置左边缘 可变 自动化布局！！
    _label02.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin;
    
    // 设置上边缘 可变 / 左边缘可变 自动化布局 ！！
    _label03.autoresizingMask = UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleLeftMargin;
    
    // 设置上边缘可变 自动布局 ！！
    
    _label04.autoresizingMask = UIViewAutoresizingFlexibleTopMargin;
    
    // 通过设置 width 可变/ 上边缘可变 / 下边缘可变 自动布局 ！！
    _viewCenter.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleBottomMargin;
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    static BOOL isLarge = NO;
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1];
    if (isLarge == NO) {
        _superView.frame = CGRectMake(10, 10, 300, 600);
    } else {
        _superView.frame = CGRectMake(20, 20, 180, 280);
    }
    [UIView commitAnimations];
    
    isLarge = !isLarge;
}


@end
