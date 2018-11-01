//
//  MyWindow.m
//  事件响应链
//
//  Created by Antony x on 2018/11/1.
//  Copyright © 2018年 Antony x. All rights reserved.
//

#import "MyWindow.h"

@implementation MyWindow

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
/**
在子视图中的优先级最高
当响应事件后， 事件到此结束
**/
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"window View 响应！！next=======%@", self.nextResponder);
    
    // 手动向下传递
    [super touchesBegan:touches withEvent:event];
}

@end
