//
//  AppDelegate.m
//  UIViewController基础
//
//  Created by Antony x on 2018/10/28.
//  Copyright © 2018年 Antony x. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    // UIKit框架的整个 基本 架构流程
    /*
     **创建一个 window 对象
     **属于 AppDelegate 的属性
     ** UIScreen: 表示屏幕硬件类
     ** mainScreen: 获取主屏幕的信息
     ** bounds: 当前手机屏幕的尺寸大小...
     **/
    self.window = [[UIWindow alloc] initWithFrame: [UIScreen mainScreen].bounds];
    
    /*
     创建视图控制器对象
     **/
    ViewController *vcRoot = [[ViewController alloc] init];
    
    // 对窗口的根视图控制器 进行赋值 操作。。。
    // 整个 UIKit 框架中只有一个根视图控制器， 属于 window 的属性
    // 视图控制器 用来 管理界面 和 处理界面 的逻辑类对象。。
    // 程序启动前， 必须对根视图 控制器 赋值
    self.window.rootViewController = vcRoot;
    
    // 将 window 作为主视图 并且 显示！！
    [self.window makeKeyAndVisible];
    NSLog(@"App 启动！！");
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
