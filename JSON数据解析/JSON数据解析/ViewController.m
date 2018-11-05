//
//  ViewController.m
//  JSON数据解析
//
//  Created by Antony x on 2018/11/5.
//  Copyright © 2018年 Antony x. All rights reserved.
//

#import "ViewController.h"
#import "BookModel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    // 创建数据视图
    _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    
    // 创建代理协议
    _tableView.delegate = self;
    _tableView.dataSource = self;
    
    [self.view addSubview:_tableView];
    [self parseData];
}

// 解析数据
-(void)parseData {
    // 获取 json 文件 本地路径
    NSString *path = [[NSBundle mainBundle] pathForResource:@"mock" ofType:@"json"];
    // 加载json 文件为二进制文件
    NSData *data = [NSData dataWithContentsOfFile:path];
    
    // 字典对象解析
    // 将 json 数据解析为 字典格式
    NSDictionary *dicRoot = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
    // 判断是否是字典
    if ([dicRoot isKindOfClass:[NSDictionary class]]) {
        // 解析数据
        _arrayBooks = [[NSMutableArray alloc] init];
        // 解析根数据
        NSArray *arryEntry = [dicRoot objectForKey:@"entry"];
        // 遍历数组对象
        for (int i=0; i<arryEntry.count; i++) {
            // 获取当前的书的字典对象
            NSDictionary *dicBook = [arryEntry objectAtIndex:i];
            // 获取书名
            NSString *bookName = [dicBook objectForKey:@"author"];
            // 创建 BookModel 对象
            BookModel *book = [[BookModel alloc] init];
            // 将书名 赋值 给 BookModel 的书名
            book.mBookName = bookName;
            // 获取书的价格
            book.mPrice = [dicBook objectForKey:@"price"];
            // 获取书的出版社名称
            book.mPublisher = [dicBook objectForKey:@"publish_house"];
            
            // 字典对象添加到数组
            [_arrayBooks addObject:book];
        }
        // 更新视图数据
        [_tableView reloadData];
    }
}

// 获取组数
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _arrayBooks.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *strID = @"ID";
    // 性能优化， 创建可复用的 单元格
    UITableViewCell *cell = [_tableView dequeueReusableCellWithIdentifier:strID];
    if(cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:strID];
    }
    // 获取对应的图书数据
    BookModel *book = [_arrayBooks objectAtIndex:indexPath.row];
    // 将书名赋值给 文本 label
    cell.textLabel.text = book.mBookName;
    // 设置副标题
    cell.detailTextLabel.text = book.mPrice;
    return cell;
}

@end
