//
//  VCSecond.h
//  多界面传值
//
//  Created by Antony x on 2018/11/5.
//  Copyright © 2018年 Antony x. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
/**
 定义代理协议， 视图控制器二的协议
 
 */
@protocol VCSecondDelegate <NSObject>

// 定义一个协议函数， 改变背景颜色
-(void)changeColor: (UIColor*) color;

@end

@interface VCSecond : UIViewController

@property (assign, nonatomic) NSInteger tag;

/**
 定义一个代理对象
 代理对象会执行函数
 通过代理对象实现协议函数， 达到代理对象改变本身属性的目的
 代理对象 一定要实现代理协议。
 */
@property (assign, nonatomic) id<VCSecondDelegate> delegate;
@end

NS_ASSUME_NONNULL_END
