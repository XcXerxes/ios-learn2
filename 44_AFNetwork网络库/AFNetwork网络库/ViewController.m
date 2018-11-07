//
//  ViewController.m
//  AFNetwork网络库
//
//  Created by Antony x on 2018/11/6.
//  Copyright © 2018年 Antony x. All rights reserved.
//

#import "ViewController.h"
#import "../AFNetworking/AFNetworking.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self AFNetMonitor];
    [self AFGetData];
}

// 获取数据
-(void) AFGetData {
    // 创建 HTTP 连接管理对象
    AFHTTPSessionManager *session = [AFHTTPSessionManager manager];
    
    // GET 方法获取服务器数据
    // 参数1: 参数传入一个 URL对象
    // 参数2: 通过指定的解构传入参数
    // 参数3: 指定下载的进度条UI
    // 参数4: 请求成功后 调用此 Block 语法块
    // 参数5: 请求失败后 调用语法块
    // 参数4: pp1， 下载的任务线程， pp2: 返回的数据内容
    // 参数5: pp1, 下载的任务线程。 pp2: 返回的错误信息
    [session GET:@"http://api.douban.com/book/subjects?q=ios&alt=json&apikey=01987f93c544bbfb04c97ebb4fce33f1" parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSLog(@"请求成功");
        BOOL isTrue = [responseObject isKindOfClass:[NSDictionary class]];
        if (isTrue) {
            // NSLog(@"返回数据为======%@", responseObject);
            NSDictionary *rootDic = [responseObject objectForKey:@"entry"];
            NSLog(@"rootDic======%@", rootDic);
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"请求失败，错误信息========%@", error);
    }];
}

// 网络连接状态
-(void) AFNetMonitor {
    // 检查网络连接的状态
    // AFNetworkReachabilityManager 网络连接检测管理类
    
    /**
     开启网络状态监控器
     sharedManager: 获得唯一的单例对象
     */
    [[AFNetworkReachabilityManager sharedManager] startMonitoring];
    
    [[AFNetworkReachabilityManager sharedManager]
setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus status) {
    switch (status) {
        case AFNetworkReachabilityStatusNotReachable:
            NSLog(@"无网络连接!!");
            break;
        case AFNetworkReachabilityStatusReachableViaWiFi:
            NSLog(@"wifi连接网络");
            break;
        case AFNetworkReachabilityStatusReachableViaWWAN:
            NSLog(@"通过移动网络连接");
            break;
        default:
            break;
    }
}];
}


@end
