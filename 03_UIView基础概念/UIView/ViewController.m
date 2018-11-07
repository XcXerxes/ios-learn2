//
//  ViewController.m
//  UIView
//
//  Created by Antony x on 2018/10/28.
//  Copyright © 2018年 Antony x. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)createUIView {
  /**
  创建一个 UIView 对象
   * UIView 是 IOS 的视图对象，
   * 显示在屏幕上的所有的对象的 基础类
   * 所有显示在屏幕上的对象一定都是继承于 UIView
   * 所有屏幕上看到的对象都是 UIView 的 子类
   * UIView 是一个矩形对象， 有背景色， 可以显示， 有层级关系
   */
    // 初始化 一个 UIView 对象
    UIView *view = [[UIView alloc]init];
    
    // 设置 view 的位置
    view.frame = CGRectMake(100, 100, 200, 100);
    
    // 设置背景颜色
    view.backgroundColor = [UIColor lightGrayColor];
    
    /*
     将 新建的视图添加到父视图上
     1、将新建的视图显示到屏幕上
     2、将视图作为 父视图的子视图 管理起来
     */
    [self.view addSubview:view];
    
    // 是否隐藏视图对象 默认值为 NO
    // view.hidden = YES;
    
    // 设置视图的透明度
    // 1 就不透明
    // 0 透明
    // view.alpha = 0.5;
    
    // 设置视图 是否显示不透明
    view.opaque = YES;
    
    // 将自己本身从父亲 视图中 删除掉
    // [view removeFromSuperview];
}

-(void)createMultiplView {
    
    // 创建三个视图对象
    UIView *view01 = [[UIView alloc]init];
    view01.frame = CGRectMake(100, 100, 150, 150);
    view01.backgroundColor = [UIColor blueColor];
    
    UIView *view02 = [[UIView alloc]init];
    view02.frame = CGRectMake(125, 125, 150, 150);
    view02.backgroundColor = [UIColor orangeColor];
    
    UIView *view03 = [[UIView alloc]init];
    view03.frame = CGRectMake(150, 150, 150, 150);
    view03.backgroundColor = [UIColor greenColor];
    
    /*
     将三个视图对象显示到屏幕上
     并且添加到父视图上
     ***哪一个视图被先添加到父视图中， 就先绘制哪个视图，显示在最下面
     *** 最后被添加到 父视图的，就会最后绘制。 显示在最上面。
     */
    
    [self.view addSubview: view01];
    [self.view addSubview:view02];
    [self.view addSubview:view03];
    
    /*
     * 将某个 视图 调整到 最前面显示
     参数： 需要被调整的 UIView视图对象
     */
    [self.view bringSubviewToFront:view01];
    
    /*
     * 将某个 视图 调整到最后面显示
     * 参数：需要被调整的 UIView视图对象
     */
    [self.view sendSubviewToBack:view01];
    
    /*
     subviews 是管理所有 self.view 的子视图的数组
     **/
    UIView *viewFront = self.view.subviews[2];
    UIView *viewBack = self.view.subviews[0];
    NSLog(@"%@", viewFront);
    if (viewBack == view01) {
        NSLog(@"相等！！");
    }
    // 打印 子视图的 父视图。
    NSLog(@"%@", view01.superview);
    NSLog(@"%@", self.view.superview);
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blackColor];
    /*
     主要内容
     1、UIView 的 基本概念
     2、UIView 的 基本属性
     3、UIView 的 层级关系
     4、UIView 的 subviews
     5、UIView 的 superview
     6、UIView 的 视图管理函数
     **/
    // 创建基本的 UIView
    // [self createUIView];
    
    // 创建多个UIView
    [self createMultiplView];
    
    // Do any additional setup after loading the view, typically from a nib.
}


@end
