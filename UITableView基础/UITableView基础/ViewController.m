//
//  ViewController.m
//  UITableView基础
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
    /**
     创建数据视图
     参数1: 数据视图的位置
     参数2: 数据视图的风格
     UITableViewStylePlain: 普通风格
     UITableViewStyleGrouped: 分组风格
     */
    _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    // 设置数据视图的代理对象
    _tableView.delegate = self;
    // 设置数据视图的数据源对象
    _tableView.dataSource = self;
    
    [self.view addSubview:_tableView];
    // Do any additional setup after loading the view, typically from a nib.
}

// 获取每组元素的个数
// 必须要实现的 协议函数
// 程序在显示数据视图时， 会调用此函数
// 返回值： 每组元素的个数
// 参数1: 数据视图本身
// 参数2: 哪一组需要的行数
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 5;
}

// 设置数据视图的组数
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 3;
}

/*
 创建单元格对象函数
 参数1: 数据视图本身
 参数2: 索引对象， 包含组数和行数的值
 **/

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *cellStr = @"cell";
    UITableViewCell *cell = [_tableView dequeueReusableCellWithIdentifier:cellStr];
    if (cell == nil) {
        // 创建一个单元格对象
        // 参数1: 单元格的样式类型
        // 参数2: 单元格的复用标记
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellStr];
    }
    NSString *str = [NSString stringWithFormat:@"第%ld组, 第%ld行", indexPath.section, indexPath.row];
    // 将单元格的组文字内容 赋值
    cell.textLabel.text = str;
    return cell;
}


@end
