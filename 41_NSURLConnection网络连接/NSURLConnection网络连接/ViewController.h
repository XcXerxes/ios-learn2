//
//  ViewController.h
//  NSURLConnection网络连接
//
//  Created by Antony x on 2018/11/6.
//  Copyright © 2018年 Antony x. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
<
// 连接服务的普通代理协议， 作为错误处理等普通协议完成
NSURLConnectionDelegate,
// 连接服务器对象的数据代理协议， 当回传数据时使用的协议
NSURLConnectionDataDelegate
>
{
    // 定义一个URL 连接对象，通过网络地址， 可以进行连接工作！！
    // 按照http协议进行 数据传输
    NSURLConnection *_connect;
    // 创建一个可变二进制数据对象， 接收服务器返回的数据！！
    NSMutableData *_data;
}

@end

