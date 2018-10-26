//
//  main.m
//  NSSet
//
//  Created by xiacan on 2018/10/26.
//  Copyright © 2018 iotek. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main(int argc, char * argv[]) {
    @autoreleasepool {
        
        // 集合初始化
        NSSet *set = [NSSet setWithObjects:@"1", @"2", @"3", @"2", nil];
        NSArray *arr = [set allObjects];
        arr = [arr sortedArrayUsingSelector:@selector(compare:)];
        for (NSString *str in set) {
            NSLog(@"输出的值为=========%@", str);
        }
        for (NSString *str1 in arr) {
            NSLog(@"输出排序之后的值==========%@", str1);
        }
        
        // 动态集合
        NSMutableSet *set1 = [NSMutableSet setWithCapacity:20];
        [set1 addObject:@"1"];
        [set1 addObject:@"1"];
        [set1 addObject:@"2"];
        NSLog(@"set1==========%@", set1);
        
        // 字典
        NSDictionary *dict = @{@"1":@"1234", @"2": @"2222"};
        NSArray *keys = [dict allKeys];
        for (NSString *str2 in keys) {
            NSLog(@"key=====%@, 值========%@", str2, [dict objectForKey:str2]);
        }
        // 初始化字典
        // NSDictionary *dict1 = [NSDictionary dictionaryWithObjectsAndKeys:@"张三",@"1",@"李四",@"2", nil];
        // 初始化字典 对象的方法
        NSDictionary *dict1 = [[NSDictionary alloc]initWithObjectsAndKeys:@"张三",@"1",@"李四",@"2",@"张三",@"2",@"王五",@"2", nil];
        NSArray *keys1 = [dict allKeys];
        for (NSString *str3 in keys1) {
            NSLog(@"key=====%@, 值========%@", str3, [dict1 objectForKey:str3]);
        }
        // 动态字典
        
        
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
