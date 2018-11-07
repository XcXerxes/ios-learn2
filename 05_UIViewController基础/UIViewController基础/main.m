//
//  main.m
//  UIViewController基础
//
//  Created by Antony x on 2018/10/28.
//  Copyright © 2018年 Antony x. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"


// 整个App程序的主函数， 入口函数
int main(int argc, char * argv[]) {
    
    // 自动内存释放池
    @autoreleasepool {
        
        // UIKit 框架结构的启动函数
        /*
         参数1: argc, 启动时 带有 参数的个数
         参数2: argv, 参数列表
         参数3(NSString *): 要求传入一个 主框架类名， 如果参数为 nil, 系统会自动用 默认的 框架类作为主框架类名！！！
         参数4(NSString *)；NSStringFromClass, 主框架的代理类名字，
         **/
        NSLog(@"启动 Main");
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
