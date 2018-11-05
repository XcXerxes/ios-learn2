//
//  ViewController.m
//  UITableView协议
//
//  Created by Antony x on 2018/11/5.
//  Copyright © 2018年 Antony x. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    // 创建数据视图对象
    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 40, self.view.bounds.size.width, self.view.bounds.size.height) style:UITableViewStylePlain];
    // 设置代理对象
    _tableView.delegate = self;
    // 设置数据代理对象
    _tableView.dataSource = self;
    
    [self.view addSubview:_tableView];
    
    // 创建一个可变数组（数据源）
    _arrayData = [[NSMutableArray alloc] init];
    
    for (int i = 'A'; i <= 'Z'; i++) {
        // 定义小数组
        NSMutableArray *arraySmall = [[NSMutableArray alloc] init];
        for (int j = 1; j<=5; j++) {
            NSString *str = [NSString stringWithFormat:@"%c%d", i,j];
            [arraySmall addObject:str];
        }
        // 生成一个二维数组
        [_arrayData addObject:arraySmall];
    }
}

// 获取组数
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return _arrayData.count;
}
// 获取每组的元素个数
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSInteger numRow = [[_arrayData objectAtIndex:section] count];
    return numRow;
}

// 获取单元格的 视图对象
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *str = @"cell";
    UITableViewCell *cell = [_tableView dequeueReusableCellWithIdentifier:str];
    if (cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:str];
    }
    cell.textLabel.text = _arrayData[indexPath.section][indexPath.row];
    return  cell;
}

// 单元格的行高度
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 50;
}

// 获取每组的头部标题
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    NSString *title = [[_arrayData objectAtIndex:section][0] substringToIndex:1];
    return title;
}

// 获取尾部的标题
//- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section {
//    return @"尾部的标题";
//}
//
// 获取头部高度
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 40;
}
// 获取尾部高度
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return 30;
}
@end
