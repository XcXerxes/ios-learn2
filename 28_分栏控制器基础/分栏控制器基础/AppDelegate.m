//
//  AppDelegate.m
//  分栏控制器基础
//
//  Created by Antony x on 2018/11/2.
//  Copyright © 2018年 Antony x. All rights reserved.
//

#import "AppDelegate.h"
#import "VCFirst.h"
#import "VCSecond.h"
#import "VCThird.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    // 创建window
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    // 显示window
    [self.window makeKeyAndVisible];
    
    // 创建视图控制器1
    VCFirst *vcFirst = [[VCFirst alloc] init];
    // 创建标题
    vcFirst.title = @"视图1";
    vcFirst.view.backgroundColor = [UIColor blueColor];
    
    // 创建视图控制器2
    VCSecond *vcSecond = [[VCSecond alloc] init];
    // 创建标题
    vcSecond.title = @"视图2";
    vcSecond.view.backgroundColor = [UIColor yellowColor];
    
    // 创建视图三
    VCThird *vcThird = [[VCThird alloc] init];
    // 创建标题
    vcThird.title = @"视图3";
    vcThird.view.backgroundColor = [UIColor orangeColor];
    
    
    // 创建分栏控制器对象
    
    UITabBarController *tbController = [[UITabBarController alloc] init];
    
    // 创意一个控制器数组对象
    // 将所有要被分栏控制器管理的对象 添加 到数组中
    NSArray *arrayVC = [NSArray arrayWithObjects:vcFirst, vcSecond, vcThird, nil];
    
    // 给分栏视图控制器管理数组赋值
    tbController.viewControllers = arrayVC;
    
    // 将分栏控制器作为根视图控制器
    self.window.rootViewController = tbController;
    
    // 设置分栏控制器 初始的索引位置
    tbController.selectedIndex = 0;
    
    // 当前选中的控制器对象
    if (tbController.selectedViewController == vcFirst) {
        NSLog(@"当前显示的是控制器1=====%@", tbController.selectedViewController.view.backgroundColor);
    }
    
    // 设置分栏控制器的工具栏的透明度
    tbController.tabBar.translucent = NO;
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
