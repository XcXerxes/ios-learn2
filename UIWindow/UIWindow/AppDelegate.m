//
//  AppDelegate.m
//  UIWindow
//
//  Created by Antony x on 2018/10/28.
//  Copyright © 2018年 Antony x. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

/**
 当 程序框架 初始化成功之后 调用此函数
 * 此函数用来初始化整个程序框架结构
 * 整个程序的 对 IOS开发人员 的 入口函数
 */
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    // 创建 UIWindow
    // 整个程序中只有一个 UIWindow 对象
    // 在程序基本上表示屏幕窗口
    // UIWindow 也是继承于 UIView
    // UIWindow 是一个特殊的 UIView
    // UIScreen: 表示屏幕硬件表示类
    // mainScreen: 获得主屏幕的 设备信息
    // bounds: 表示屏幕的宽高值(矩形对象)
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    
    // 创建一个视图控制器 作为 UIWindow 的 根视图控制器
    self.window.rootViewController = [[UIViewController alloc] init];
    
    // 设置 window 的背景颜色
    self.window.backgroundColor = [UIColor blueColor];
    
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 150, 150)];
    view.backgroundColor = [UIColor orangeColor];
    
    // 背景视图
    UIView *backView = [[UIView alloc] initWithFrame:CGRectMake(50, 0, 240, 360)];
    backView.backgroundColor = [UIColor greenColor];
    
    /**
     将backview 作为 view 的父视图
     **子视图的坐标 是 参照 父视图 的坐标系
     ** 当父视图被移动时， 子视图都会被移动
     */
    
    [backView addSubview:view];
    
    [self.window addSubview:backView];
    
    // 每一个 view 都 有 一个 window 属性
    // 所有的 子视图的 window 属性 都是 指向 self.window 
    NSLog(@"%@", view.window);
    NSLog(@"%@", backView.window);
    NSLog(@"%@", self.window);
    
    // 使 window 有效显示在屏幕上
    [self.window makeKeyAndVisible];
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
