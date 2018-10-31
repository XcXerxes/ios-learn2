//
//  AppDelegate.m
//  XIB使用介绍
//
//  Created by Antony x on 2018/10/31.
//  Copyright © 2018年 Antony x. All rights reserved.
//

#import "AppDelegate.h"
#import "VCRoot.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    // 创建一个窗口对象
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    // 方法1=====》 创建一个根视图控制器对象
    // 参数1: 创建时 ，所要加载的 XIB 资源文件名，加载我们的XIB作为 视图控制器视图。
    // 参数2: 是指主文件包， XIB所在的位置
    // mainBundle: 是主资源文件包
    // 如果传入 nil, 函数自动会去 mainBundle 中查找
    // VCRoot *root = [[VCRoot alloc] initWithNibName:@"VCRoot" bundle:[NSBundle mainBundle]];
    
    // 方法2 ======》 创建一个根视图控制器对象
    /*
     如果系统中有 XIB 的名字和 类名 VCRoot **相同**，
     Init 函数会自动去加载 VCRoot.xib 文件
     */
    VCRoot *root = [[VCRoot alloc] init];
    
    // 根视图控制器赋值
    self.window.rootViewController = root;
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
