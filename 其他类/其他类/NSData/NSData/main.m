//
//  main.m
//  NSData
//
//  Created by xiacan on 2018/10/26.
//  Copyright © 2018 iotek. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main(int argc, char * argv[]) {
    @autoreleasepool {
        NSString *str = @"abcdef";
        [str writeToFile:@"abc.txt" atomically:NO encoding:NSUTF8StringEncoding error:nil];
        
        // 数组写入文件
        NSArray *array=[[NSArray alloc]initWithObjects:@"1111", @"2222",@"3333",@"4444", nil];
        [array writeToFile:@"array.plist" atomically:NO];
        
        // 读取 .plist 文件
        NSArray * array1 = [NSArray arrayWithContentsOfFile:@"info.plist"];
        NSLog(@"array1========%@", array1);
        
        // 集合写入文件
        // 把集合转换为数组
        NSSet *set = [[NSSet alloc] initWithObjects:@"1", @"2", @"3", nil];
        NSArray *array2 = [set allObjects];
        
        // 字典写入文件
        NSDictionary *dict = [NSDictionary dictionaryWithObjectsAndKeys:@"1234",@"1",@"567",@"2", nil];
        [dict writeToFile:@"dict.plist" atomically:YES];
        
        // 读取文件
        NSDictionary *dict1 = [[NSDictionary alloc] initWithContentsOfFile:@"dict.plist"];
        NSLog(@"dict1==========%@", dict1);
        
        
        // NSdata 二进制文件
        NSData *data = [NSData dataWithContentsOfFile:@"/Users/xiacan/Documents/web/ios-projects/ios-learn2/其他类/其他类/NSData/NSData/1.jpg"];
        NSLog(@"长度为========%lu", [data length]);
        // 读取二进制数据
        unsigned const *ch = [data bytes];
        NSLog(@"%x, %x", ch[0], ch[1]);
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
