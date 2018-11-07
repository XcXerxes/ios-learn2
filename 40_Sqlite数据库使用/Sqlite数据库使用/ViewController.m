//
//  ViewController.m
//  Sqlite数据库使用
//
//  Created by xiacan on 2018/11/5.
//  Copyright © 2018 iotek. All rights reserved.
//

#import "ViewController.h"
#import "../fmdb/FMDatabase.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // 按钮标题数组
    NSArray *arrTitle = [NSArray arrayWithObjects:@"创建数据库", @"插入数据", @"删除数据", @"查找显示", nil];
    // 循环创建4个按钮
    for (int i = 0; i < arrTitle.count; i++) {
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        btn.frame = CGRectMake(100, 100+80*i, 100, 40);
        [btn addTarget:self action:@selector(pressBtn:) forControlEvents:UIControlEventTouchUpInside];
        btn.tag = 100 + i;
        [btn setTitle:arrTitle[i] forState:UIControlStateNormal];
        [self.view addSubview:btn];
    }
}

-(void)pressBtn: (UIButton *)btn {
    if (btn.tag == 100) {
        // 创建打开数据库
        
        /*
         获取数据库的创建路径
         NSHomeDirectory()：获取手机APP 的沙盒路径
         **/
        NSString *strPath =[NSHomeDirectory() stringByAppendingString:@"/Users/xiacan/Documents/web/ios-projects/ios-learn2/db01.db"];
        /*
         创建并且打开数据库
         如果路径下面没有数据库，创建指定的数据库
         如果路径下已经存在数据库， 加载数据库到内存
         */
        FMDatabase *db = [FMDatabase databaseWithPath:strPath];
        if (db != nil) {
            NSLog(@"数据库创建成功!");
        }
        // 打开数据库操作
        BOOL isOpen = [db open];
        
        if (isOpen) {
            NSLog(@"打开数据库成功!!");
        }
        // 关闭数据库
        BOOL isClose = [db close];
        if (isClose) {
            NSLog(@"关闭数据库成功!");
        }
    } else if (btn.tag == 101) {
        // 插入数据
        
    } else if (btn.tag == 102) {
        // 删除数据
    } else {
        // 查找显示数据
    }
}

@end
