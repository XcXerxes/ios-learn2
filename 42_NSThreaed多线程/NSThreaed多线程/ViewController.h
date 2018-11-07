//
//  ViewController.h
//  NSThreaed多线程
//
//  Created by Antony x on 2018/11/6.
//  Copyright © 2018年 Antony x. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

{
    // 定义线程对象01
    NSThread *_thread01;
    
    // 定义线程对象02
    NSThread *_thread02;
    
    // 定义一个计数器，
    NSInteger _counter;
    
    // 定义一个线程锁对象
    NSLock *_lock;
}
@end

