//
//  ViewController.m
//  步进器和分栏控件
//
//  Created by Antony x on 2018/10/29.
//  Copyright © 2018年 Antony x. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize stepper = _stepper;
@synthesize segControl = _segControl;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    /*
     创建一个 UIStepper 对象
     **/
    _stepper = [[UIStepper alloc] init];
    
    // 位置
    // 宽高无法改变
    _stepper.frame = CGRectMake(100, 100, 80, 40);
    
    // 步进器的 主题颜色
    _stepper.tintColor = [UIColor orangeColor];
    
    // 设置步进器的最小值
    _stepper.minimumValue = 0;
    
    // 设置步进器的最大值
    _stepper.maximumValue = 100;
    
    // 设置步进器的当前值 默认值为0
    _stepper.value = 10;
    
    // 设置 步进器 的 部数值
    _stepper.stepValue = 1;
    
    
    // 是否可以重复响应事件
    _stepper.autorepeat = YES;
    
    // 是否讲步进器 结果 通过事件函数 响应出来
    // NO 不会显示过程中的结果，只会显示最终的值
    // YES 会显示整个过程中的结果
    _stepper.continuous = YES;
    
    // 事件实现
    /*
     参数1: 函数实现体
     参数2: 函数体
     参数3: 事件值改变状态
     **/
    [_stepper addTarget:self action:@selector(stepChange) forControlEvents: UIControlEventValueChanged];
    
    [self.view addSubview:_stepper];
    
    
    /*
     创建 分栏控件
     **/
    _segControl = [[UISegmentedControl alloc] init];
    
    // 设置分栏控件位置
    // 宽度可变， 高度不可变
    _segControl.frame = CGRectMake(0, 200, [UIScreen mainScreen].bounds.size.width, 40);
    
    // 添加一个按钮元素
    [_segControl insertSegmentWithTitle:@"0元" atIndex:0 animated:NO];
    /*
     参数1: 按钮选项文字
     参数2: 按钮的索引位置
     参数： 是否有插入的动画效果
     */
    [_segControl insertSegmentWithTitle:@"5元" atIndex:1 animated:NO];
    [_segControl insertSegmentWithTitle:@"10元" atIndex:2 animated:NO];
    [_segControl insertSegmentWithTitle:@"30元" atIndex:3 animated:NO];
    
    // 设置当前默认按钮索引位置
    _segControl.selectedSegmentIndex = 0;
    
    [_segControl addTarget:self action:@selector(segChange) forControlEvents:UIControlEventValueChanged];
    
    [self.view addSubview:_segControl];
}

-(void)stepChange {
    NSLog(@"step press=====%f", _stepper.value);
}

-(void)segChange{
    NSLog(@"seg press=======%ld", _segControl.selectedSegmentIndex);
}


@end
