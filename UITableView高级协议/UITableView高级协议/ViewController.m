//
//  ViewController.m
//  UITableView高级协议
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
    self.title = @"主视图";
    // Do any additional setup after loading the view, typically from a nib.
    
    //创建数据视图
    _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    
    // 自动调整子视图的大小
    _tableView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
    
    // 设置代理
    _tableView.delegate = self;
    _tableView.dataSource = self;
    
    // 数据视图的头部视图的设定
    _tableView.tableHeaderView = nil;
    
    //数据视图的底部视图的设定
    _tableView.tableFooterView = nil;
    
    [self.view addSubview:_tableView];
    _arrayData = [[NSMutableArray alloc] init];
    // 初始化数据源数据
    for (int i=1; i<20; i++) {
        NSString *str = [NSString stringWithFormat:@"A %d", i];
        [_arrayData addObject:str];
    }
    // 当数据视图的 数据源 发生变化时， 调用此函数
    // 重新加载数据， 更新视图
    [_tableView reloadData];
    [self createBtn];
}
// 创建功能按钮
-(void)createBtn {
    _isEdit = NO;
    _btnEdit = [[UIBarButtonItem alloc] initWithTitle:@"编辑" style:UIBarButtonItemStylePlain target:self action:@selector(pressEdit)];
    _btnFinish = [[UIBarButtonItem alloc] initWithTitle:@"完成" style:UIBarButtonItemStylePlain target:self action:@selector(pressFinish)];
    _btnDelete = [[UIBarButtonItem alloc] initWithTitle:@"删除" style:UIBarButtonItemStylePlain target:self action:@selector(pressDelete)];
    self.navigationItem.rightBarButtonItem = _btnEdit;
}

-(void)pressEdit {
    _isEdit = YES;
    self.navigationItem.rightBarButtonItem = _btnFinish;
    [_tableView setEditing:YES];
    self.navigationItem.leftBarButtonItem = _btnDelete;
}
-(void)pressFinish {
    _isEdit = NO;
    self.navigationItem.rightBarButtonItem = _btnEdit;
    [_tableView setEditing:NO];
    self.navigationItem.leftBarButtonItem = nil;
}
-(void)pressDelete {
    
}

// 选中单元格时触发
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    // NSLog(@"选中单元格!!%ld, %ld", indexPath.section, indexPath.row);
}
// 反向选中的时候
// 获取上一个选中的单元格 的 位置
- (void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"选中单元格!!%ld, %ld", indexPath.section, indexPath.row);
}

// 可以显示编辑状态， 当手指在单元格上移动时
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    // 删除数据源对应的数据
    [_arrayData removeObjectAtIndex:indexPath.row];
    // 刷新数据源， 更新视图
    [_tableView reloadData];
    NSLog(@"%ld", editingStyle);
    NSLog(@"delete");
}

// 单元格显示效果协议
- (UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath {
    // UITableViewCellEditingStyleDelete： 删除状态
    // UITableViewCellEditingStyleInsert: 插入状态
    // UITableViewCellEditingStyleNone 空状态
    // UITableViewCellEditingStyleDelete | UITableViewCellEditingStyleInsert: 多选组合状态
    // 默认删除状态
    return UITableViewCellEditingStyleDelete;
}

// 获取行数
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _arrayData.count;
}

// 默认组数返回1
//- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//    return 1;
//}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 60;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *strID = @"ID";
    // 尝试获取可复用的单元格
    // 性能优化！！！
    // 如果得不到， 返回 nil
    UITableViewCell *cell = [_tableView dequeueReusableCellWithIdentifier:strID];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1
                                      reuseIdentifier:strID];
    }
    // 主标题设置
    cell.textLabel.text = [_arrayData objectAtIndex:indexPath.row];
    // 子标题设置
    cell.detailTextLabel.text = @"子标题";
    cell.showsReorderControl = YES;
    
    UIImage *image = [UIImage imageNamed:@"3.jpg"];
    // 设置默认的图标信息
    cell.imageView.image = image;
    return cell;
}


@end
