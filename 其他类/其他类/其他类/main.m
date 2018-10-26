//
//  main.m
//  其他类
//
//  Created by xiacan on 2018/10/26.
//  Copyright © 2018 iotek. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main(int argc, char * argv[]) {
    @autoreleasepool {
        /*
         因为 NSArray 里面只能保存 对象类型的数据， 所以需要对 其他类型的数据 进行转换
        CGPoint point = {100, 200};
        CGPoint point1 = {100, 100};
        CGPoint point2 = {200, 100};
        NSValue *v1 = [NSValue valueWithCGPoint:point];
        NSValue *v2 = [NSValue valueWithCGPoint:point1];
        NSValue *v3 = [NSValue valueWithCGPoint:point2];
        NSArray *array = [NSArray arrayWithObjects:v1, v2, v3, nil];
        for (NSValue *v in array) {
            CGPoint p = [v CGPointValue];
            NSLog(@"x===%f, y===%f", p.x, p.y);
        }
         */
        NSMutableArray *array = [NSMutableArray arrayWithCapacity:10];
        for (int i=0; i<10; i++) {
            NSNumber *number = [NSNumber numberWithInt:i+1];
            [array addObject:number];
        }
        for (NSNumber *num in array) {
            NSLog(@"输出num===========%d", [num intValue]);
        }
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
