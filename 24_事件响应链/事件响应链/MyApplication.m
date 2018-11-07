//
//  MyApplication.m
//  事件响应链
//
//  Created by Antony x on 2018/11/1.
//  Copyright © 2018年 Antony x. All rights reserved.
//

#import "MyApplication.h"

@implementation MyApplication

/**
 在子视图中的优先级最高
 当响应事件后， 事件到此结束
 **/
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"App View 响应！！");
}

@end
