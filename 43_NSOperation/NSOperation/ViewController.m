//
//  ViewController.m
//  NSOperation
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
    NSArray *array =  [NSArray arrayWithObjects:@"添加任务1到队列中",@"添加任务2到队列中",nil];
    
    for (int i = 0; i < array.count; i++) {
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        btn.frame = CGRectMake(100, 100 + 80*i, 80, 40);
        [btn setTitle:array[i] forState:UIControlStateNormal];
        [btn addTarget:self action:@selector(pressBtn:) forControlEvents:UIControlEventTouchUpInside];
        btn.tag = 101 + i;
        [self.view addSubview: btn];
    }
    // 创建一个任务队列
    _queue = [NSOperationQueue new];
    
    // 设置最大并发任务的数量
    [_queue setMaxConcurrentOperationCount:5];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)pressBtn: (UIButton *)btn{
    // 任务函数1
    if (btn.tag == 101) {
        /*
         方法1***
         创建一个执行任务
         参数1: 任务函数执行拥有者
         参数2: 任务函数执行体
         参数3: 任意参数
         **/
        NSInvocationOperation *iop = [[NSInvocationOperation alloc] initWithTarget:self selector:@selector(opAct01:) object:@"OPT01"];
        [_queue addOperation:iop];
        
        // 方法二 实现任务
        // 初始化任务对象
        NSInvocation *invo = [NSInvocation new];
        // 初始化 target
        invo.target = self;
        // 初始化 selector
        invo.selector = @selector(optAct01);
        
        // 创建一个执行任务
        NSInvocationOperation *iop02 = [[NSInvocationOperation alloc] initWithInvocation:invo];
        [_queue addOperation:iop02];
        
    } else {
        // 任务函数2
        /*
         方法三：
         使用 block 语法块来进行语法处理
         **/
        [_queue addOperationWithBlock:^{
            while (true) {
                NSLog(@"block opt!!");
            }
        }];
        
    }
}

-(void)opAct01:(NSInvocationOperation *)opt {
    while (true) {
        NSLog(@"opt 01!!");
    }
}


@end
