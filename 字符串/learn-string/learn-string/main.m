//
//  main.m
//  learn-string
//
//  Created by xiacan on 2018/10/23.
//  Copyright © 2018 iotek. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main(int argc, char * argv[]) {
    @autoreleasepool {
        // 初始化（工厂行为）
        // 行为
        // NSString 静态 NSMUtableString动态
        NSString *str = @"123";
        // 类的行为
        
        // 通过C 字符串来构建一个字符串
        char *cstr = "hello world";
        NSString *str1 = [NSString stringWithCharacters:cstr length:strlen(cstr)];
        NSLog(@"输出字符串str1==========%@", str1);
        
        //
        NSString *str2 = [NSString stringWithFormat:@"%d", 520];
        NSString *str3 = [NSString stringWithString:@"hello world"];
        
        NSLog(@"str2 ========%@", str2);
        NSLog(@"str2 ========%@", str3);
        
        // 对象的初始化行为
        NSString *str4 = [[NSString alloc] init];
        str4 = @"我是str4";
        NSLog(@"str4 =========%@", str4);
        
        NSString *str5 = [[NSString alloc] initWithFormat:@"%d", 600];
        NSLog(@"str5=========%@", str5);
        
        NSString *str6 = @"abc";
        str6 = @"cde";

        NSLog(@"str6=========%@", str6);
        // 大小写处理
        str6 = [str6 uppercaseString];
        NSLog(@"str6===========%@", str6);
        str6 = [str6 lowercaseString];
        NSLog(@"str6===========%@", str6);
        
        // 字符长度
        NSString * str7 = @"12345678.8年";
        NSLog(@"长度为=============%lu", [str7 lengthOfBytesUsingEncoding:NSUTF8StringEncoding]);
        
        // 判断字符串中包含某个值
        NSRange rang = [str7 rangeOfString:@"."];
        NSLog(@"%lu==== location====%lu", rang.length, rang.location);
        
        // 以什么开头
        Boolean isPref = [str7 hasPrefix:@"12"];
        
        // 以什么结尾
        Boolean issub = [str7 hasSuffix:@"8"];
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
