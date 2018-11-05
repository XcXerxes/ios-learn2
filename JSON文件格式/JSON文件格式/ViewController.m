//
//  ViewController.m
//  JSON文件格式
//
//  Created by Antony x on 2018/11/5.
//  Copyright © 2018年 Antony x. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
// 数据字典
static NSDictionary *dic;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    // 获得json 文件 在手机中的路径
    // mainBundle 获取主资源包
    // pathForResource: 获取json 文件的全路径
    // 通过返回一个字符串来获取全路径
    // 参数1: 文件名
    // 参数2: 文件格式
    NSString *path = [[NSBundle mainBundle] pathForResource:@"mock" ofType:@"json"];
    
    // 讲文件读取出来， 作为二进制文件存储
    // 参数： 文件路径
    // 返回值： 二进制文件格式
    NSData *dataJson = [NSData dataWithContentsOfFile:path];
    
    //NSJSONSerialization：将 数据解析类
    // 参数1: 二进制的数据对象
    // 参数2: 解析方式
    // 参数3: 错误的回调函数
    // 返回值： 将解析后的数据保存在字典中返回！！
    dic = [NSJSONSerialization JSONObjectWithData:dataJson options:NSJSONReadingMutableContainers error:nil];
    NSLog(@"%@", dic);
}


@end
