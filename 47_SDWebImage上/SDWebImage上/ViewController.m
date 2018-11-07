//
//  ViewController.m
//  SDWebImage上
//
//  Created by Antony x on 2018/11/7.
//  Copyright © 2018年 Antony x. All rights reserved.
//

#import "ViewController.h"
#import "AFNetworking/AFNetworking.h"
#import "SDWebImage/UIImageView+WebCache.h"
#import "BookModel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"SDWebImage";
    // 设置导航不透明
    self.navigationController.navigationBar.translucent = NO;
    
    _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    
    // 自动调整视图大小属性
    _tableView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
    
    [self.view addSubview:_tableView];
    
    _arrayData = [NSMutableArray new];
    
    // 创建 导航控制器按钮
    _btnLoadData = [[UIBarButtonItem alloc] initWithTitle:@"加载数据" style:UIBarButtonItemStylePlain target:self action:@selector(pressLoad)];
    self.navigationItem.rightBarButtonItem = _btnLoadData;
    // Do any additional setup after loading the view, typically from a nib.
}

// 获取数据
-(void)loadDataFromNet {
    // 获取AFHttpSession 对象
    // 获取网络数据
    AFHTTPSessionManager *session = [AFHTTPSessionManager manager];
    
    NSArray *arrayG = [NSArray arrayWithObjects:@"ios", @"Android", @"C++", nil];
    
    static int counter = 0;
    // 网络请求的 route
    NSString *path = [NSString stringWithFormat:@"http://api.douban.com/book/subjects?q=%@&alt=json&apikey=01987f93c544bbfb04c97ebb4fce33f1", arrayG[counter]];
    counter ++;
    if (counter >=3) {
        counter = 0;
    }
    [session GET:path parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSLog(@"请求成功!!");
        if ([responseObject isKindOfClass:[NSDictionary class]]) {
            NSLog(@"dic======%@", responseObject);
            [self parseData:responseObject];
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"请求失败!!");
    }];
}
// 解析数据
-(void)parseData:(NSDictionary *)dicData {
    NSArray *arrEntry = [dicData objectForKey:@"entry"];
    for (NSDictionary *dicBook in arrEntry) {
        NSDictionary *dicTitle = [dicBook objectForKey:@"title"];
        NSString *strTitle = [dicTitle objectForKey:@"$t"];
        NSLog(@"strTitle");
        BookModel *bModel = [BookModel new];
        // 获取书籍名称
        bModel.mBookName = strTitle;
        // 解析图片
        NSArray *arrayLink = [dicBook objectForKey:@"link"];
        
        for (NSDictionary *dicLink in arrayLink) {
            NSString *sValue = [dicLink objectForKey:@"@rel"];
            if ([sValue  isEqualToString:@"image"]) {
                bModel.mImageURL = [dicLink objectForKey:@"@href"];
            }
        }
        // 加载数据到 array
        [_arrayData addObject:bModel];
        // 重新渲染数据
        [_tableView reloadData];
    }
}
// 加载新的数据
-(void)pressLoad {
//    static int i = 0;
//    for (int j =0; j < 10; i++,j++) {
//
//        NSString *str = [NSString stringWithFormat:@"数据%d",i+1];
//
//        [_arrayData addObject:str];
//    }
    // 获取数据
    [self loadDataFromNet];
}

// 组数
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

// 行数
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [_arrayData count];
}

// 设置单元格内容
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *strID = @"ID";
    UITableViewCell *cell = [_tableView dequeueReusableCellWithIdentifier:strID];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:strID];
    }
    BookModel *bModel = _arrayData[indexPath.row];
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn setTitle:@"删除" forState:UIControlStateNormal];
    cell.textLabel.text = bModel.mBookName;
    [cell.contentView addSubview:btn];
    // 使用 webImage来 加载网络图片
    [cell.imageView sd_setImageWithURL:[NSURL URLWithString: bModel.mImageURL] placeholderImage:[UIImage imageNamed:@"placeholder.jpg"]];
    return cell;
}

// 设置单元格高度
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 80;
}

@end
