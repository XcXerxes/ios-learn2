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
        
        // 等值比较
        NSString *str8 = @"1234";
        if ([str8 isEqualToString:@"1234"] ) {
            NSLog(@"是");
        } else {
            NSLog(@"不是");
        }
        
        // 转换数据类型
        NSString *str9 = @"123";
        int i = [str9 intValue];
        NSLog(@"=========%d", i);
        double b = [str9 doubleValue];
        NSLog(@"==========%g", b);
        
        // 提取子字符串
        NSString *str10 = @"123.4";
        NSLog(@"=========%@", [str10 substringFromIndex:0]); // 类似于 substr
        NSLog(@"=========%@", [str10 substringToIndex:2]);
        NSRange rang1 = {0,2};
        NSLog(@"=========%@", [str10 substringWithRange: rang1]);
        
        // 剔除字符串两端的空格
        NSString *str11 = @"123";
        NSString *str12 = @" 456 ";
        str12 = [str12 stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
        NSString *str13 = @"7";
        NSLog(@"%@%@%@", str11, str12, str13);
        
        // 字符串写入文件
        [str11 writeToFile:@"abc.txt" atomically:NO encoding:NSUTF8StringEncoding error:nil];
        
        // 读取文件
        // 出错对象
        NSError *error;
        str11 = [NSString stringWithContentsOfFile:@"abc.txt" encoding:NSUTF8StringEncoding error:&error];
        NSLog(@"读取文件==========%@======error======%@", str11, error);
        
        // 字符串的拼接
        NSString *str14 = [NSString stringWithFormat:@"%@%@", str12, str13];
        NSLog(@"拼接完成的字符串=========%@", str14);
        str14 = [str stringByAppendingString:@"000"];
        NSLog(@"拼接完成的字符串==========%@", str14);
        
        /**
    
         动态字符串
         **/
        NSMutableString *str15 = [NSMutableString stringWithCapacity:100];
        NSLog(@"15=====%@", str15);
        // 增加字符串
        [str15 appendString:@"1234"];
        // 格式化增加字符串
        [str15 appendFormat:@"%d", 123];
        NSRange range2 = {0, 2};
        // 替换字符串
        [str15 replaceCharactersInRange:range2 withString:@"abd"];
        NSLog(@"15=======%@", str15);
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
