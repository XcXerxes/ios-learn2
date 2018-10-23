//
//  main.m
//  learn-structure
//
//  Created by xiacan on 2018/10/23.
//  Copyright © 2018 iotek. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

// Objective-C 的结构
/*
 点结构，
 大小结构
 矩形结构，
 范围结构
 */

struct Student {
    int age;
    char name[40];
};

int main(int argc, char * argv[]) {
    @autoreleasepool {
        struct Student leo = {22, "zhangsan"};
        NSLog(@"name ===%s, age ==== %d", leo.name, leo.age);
        
        // 点结构
        // CGPoint p = {100, 200};
        CGPoint p = CGPointMake(10, 10);
        // p.x = 100;
        // p.y = 100;
        NSLog(@"x=== %g, y=====%g", p.x, p.y);
        
        // 大小
        // CGSize size = {20, 10};
        CGSize size = CGSizeMake(20, 10);
        // size.width = 20;
        // size.height = 10;
        NSLog(@"width=========%g, height ==========%g", size.width, size.height);
        
        // 矩形
        CGRect rect = CGRectMake(10, 20, 20, 10);
        // rect.origin.x = 10;
        // rect.origin.y = 10;
        // rect.size.width = 20;
        // rect.size.height = 10;
        NSLog(@"width=========%g, height ==========%g", rect.size.width, rect.size.height);
        
        // 范围
        NSRange range;
        range.location = 10;
        range.length = 10;
        // NSLog(@"range=========%", range);
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
