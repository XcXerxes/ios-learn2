//
//  AppDelegate.m
//  分栏控制器高级(TabBar)
//
//  Created by Antony x on 2018/11/2.
//  Copyright © 2018年 Antony x. All rights reserved.
//

#import "AppDelegate.h"
#import "VCFirst.h"
#import "VCSecond.h"
#import "VCThird.h"
#import "VCFour.h"
#import "VCFive.h"
#import "VCSix.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame: [UIScreen mainScreen].bounds];
    
    [self.window makeKeyAndVisible];
    
    VCFirst *vf = [[VCFirst alloc] init];
    VCSecond *vs = [[VCSecond alloc] init];
    VCThird *vt = [[VCThird alloc] init];
    VCFour *vfour = [[VCFour alloc] init];
    VCFive *vfive = [[VCFive alloc] init];
    VCSix *vsix = [[VCSix alloc] init];
    
    // 设置标题
    vf.title = @"视图1";
    vs.title = @"视图2";
    vt.title = @"视图3";
    vfour.title = @"视图4";
    vfive.title = @"视图5";
    vsix.title = @"视图6";
    
    // 设置背景颜色
    vf.view.backgroundColor = [UIColor blueColor];
    vs.view.backgroundColor = [UIColor yellowColor];
    vt.view.backgroundColor = [UIColor orangeColor];
    vfour.view.backgroundColor = [UIColor purpleColor];
    vfive.view.backgroundColor = [UIColor grayColor];
    vsix.view.backgroundColor = [UIColor greenColor];
    
    // 创建数组
    
    NSArray *arrayVC = [NSArray arrayWithObjects:vf, vs, vt, vfour, vfive, vsix, nil];
    UITabBarController *tabBarVC = [[UITabBarController alloc] init];
    
    tabBarVC.viewControllers = arrayVC;
    
    tabBarVC.tabBar.translucent = NO;
    
    self.window.rootViewController = tabBarVC;
    
    // 设置分栏控制器的风格颜色
    tabBarVC.tabBar.barTintColor = [UIColor redColor];
    
    //改变分栏控制器的字体风格颜色
    tabBarVC.tabBar.tintColor = [UIColor whiteColor];
    
    
    
    return YES;
}

// 开始编辑前调用
- (void)tabBarController:(UITabBarController *)tabBarController willBeginCustomizingViewControllers:(NSArray<__kindof UIViewController *> *)viewControllers {
    NSLog(@"开始编辑!!!");
}

- (void)tabBarController:(UITabBarController *)tabBarController willEndCustomizingViewControllers:(NSArray<__kindof UIViewController *> *)viewControllers changed:(BOOL)changed {
    NSLog(@"即将结束编辑");
}
- (void)tabBarController:(UITabBarController *)tabBarController didEndCustomizingViewControllers:(NSArray<__kindof UIViewController *> *)viewControllers changed:(BOOL)changed{
    NSLog(@"已经结束编辑!!!");
}

- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController {
    NSLog(@"选中控制器对象!!!");
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
