//
//  ViewController.m
//  NSURLConnection网络连接
//
//  Created by Antony x on 2018/11/6.
//  Copyright © 2018年 Antony x. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn.frame = CGRectMake(100, 100, 80, 40);
    [btn setTitle:@"连接数据" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(pressBtn) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn];
}

-(void)pressBtn {
    NSLog(@"press btn");
    // 定义一个字符串 URL
    NSString *strURL = @"http://www.baidu.com";
    // 将字符串转换为一个地址连接对象
    NSURL *url = [NSURL URLWithString:strURL];
    
    // 定义一个 连接 请求对象
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    // 创建一个网络连接对象
    _connect = [NSURLConnection connectionWithRequest:request delegate:self];
    
    //初始化数据
    _data = [[NSMutableData alloc] init];
}

// 处理错误信息的代理协议
// 如果有任何错误， 调用此协议， 进行错误的打印查看
// 参数1: 连接对象
// 参数2: 错误信息
- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error {
    NSLog(@"error======%@", error);
}

// 处理服务器返回的响应码
- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response {
    NSHTTPURLResponse *res = (NSHTTPURLResponse *) response;
    if (res.statusCode == 200) {
        NSLog(@"连接成功 服务器正常");
    } else if (res.statusCode == 404) {
        NSLog(@"服务器正常开启， 没有找到连接地址页面或数据!!!");
    }
}
// 接收服务器回传的数据时调用
- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data {
    // 将每次回传的数据连接起来
    [_data appendData:data];
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection {
    // 将二进制数据转换为字符串对象
    NSString *str = [[NSString alloc] initWithData:_data encoding:NSUTF8StringEncoding];
    NSLog(@"baidu page ===%@", str);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
