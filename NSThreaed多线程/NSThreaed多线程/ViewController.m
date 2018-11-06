//
//  ViewController.m
//  NSThreaed多线程
//
//  Created by Antony x on 2018/11/6.
//  Copyright © 2018年 Antony x. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSArray *array = [[NSArray alloc] initWithObjects:@"启动线程",@"启动线程01", @"启动线程02", nil];
    for (int i=0; i < array.count; i++) {
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        btn.frame = CGRectMake(100, 100+80*i, 80, 40);
        [btn setTitle:array[i] forState:UIControlStateNormal];
        [btn addTarget:self action:@selector(pressBtn:) forControlEvents:UIControlEventTouchUpInside];
        btn.tag = 100 + i;
        [self.view addSubview:btn];
    }
    // 创建 锁对象
    _lock = [[NSLock alloc] init];
}
-(void)pressBtn: (UIButton *)btn {
    // 执行函数01
    if (btn.tag == 100) {
        NSLog(@"启动线程按下");
        // 创建一个线程对象
        // 参数1: 线程对象允许函数的拥有者
        // 参数2: 线程的 处理函数
        // 参数3: 线程参数
        NSThread *newT = [[NSThread alloc] initWithTarget:self selector:@selector(actNew:) object:nil];
        // 启动并且允许线程
        [newT start];
    } else if (btn.tag == 101) {
        NSLog(@"启动线程01按下");
        // 创建并且同时启动线程
        [NSThread detachNewThreadSelector:@selector(actT1) toTarget:self withObject:nil];
    } else {
        NSLog(@"启动线程02按下");
        _thread02 = [[NSThread alloc] initWithTarget:self selector:@selector(actT2) object:nil];
        [_thread02 start];
    }
}


// 参数： 线程对象本身
-(void)actNew: (NSThread *)newT {
    int i=0;
    while (true) {
        i++;
        if (i >=10000) {
            break;
        }
        _counter++;
        NSLog(@"i======%ld", _counter);
    }
}
-(void)actT1 {
    int i=0;
    while (true) {
        i++;
        if (i >=10001) {
            break;
        }
        // 确保 加法操作的安全性
        [_lock lock];
        _counter++;
        [_lock unlock];
        NSLog(@"c1======%ld", _counter);
    }
    NSLog(@"c1 final===========================%ld", _counter);
}
-(void)actT2 {
    int i=0;
    while (true) {
        i++;
        if (i >=10001) {
            break;
        }
        // 确保 加法操作的安全性
        [_lock lock];
        _counter++;
        [_lock unlock];
        NSLog(@"c2======%ld", _counter);
    }
    NSLog(@"c2 final===========================%ld", _counter);
}

@end
