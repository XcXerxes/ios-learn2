//
//  ViewController.m
//  UIPickerView
//
//  Created by xiacan on 2018/11/3.
//  Copyright © 2018 iotek. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // 创建选择视图对象
    // 显示多组数据和多个元素以供选择
    // 例如选择日期， 时间， 日历效果，地区地址等功能
    UIPickerView *pickerView = [[UIPickerView alloc] init];
    
    // 位置和大小
    pickerView.frame = CGRectMake(10, 100, 300, 200);
    
    // 设置普通代理为当前的视图控制器
    pickerView.delegate = self;
    
    // 设置数据代理对象为当前视图控制器
    pickerView.dataSource = self;
    
    [self.view addSubview:pickerView];
}

// 实现获取组数的协议函数
// 返回值为选择视图的组数， 整数类型
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 3;
}

// 实现每组元素的个数
// 每组元素有多少行
// 参数1: 调用此协议的选择视图本身
// 参数2: 第几组的元素个数
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    // 每组10个元素
    if (component == 0) {
        return 5;
    } else if (component == 1) {
        return 10;
    } else if (component == 2) {
        return 20;
    }
    return 10;
}
// 显示每个元素的内容
// 参数1/； 调用此协议的选择视图本身
// 参数2: 行数
// 参数3: 组数
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    NSString *str = [NSString stringWithFormat:@"%ld组%ld行", component+1, row+1];
    return str;
}

// 可以将自定义的视图显示屏幕上
// 参数1: 调用此协议的选择视图本身
// 参数2: 行数
// 参数3: 组数
// 参数4:当前的视图
- (UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view {
    UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:@"%ld.jpg",row%7+1]];
    UIImageView *iView = [[UIImageView alloc] initWithImage:image];
    iView.frame = CGRectMake(0, 0, 80, 80);
    return iView;
}

// 设置每行元素的行高！！
- (CGFloat)pickerView:(UIPickerView *)pickerView rowHeightForComponent:(NSInteger)component {
    return 80;
}

@end
