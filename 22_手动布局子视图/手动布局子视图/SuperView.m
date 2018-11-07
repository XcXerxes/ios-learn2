//
//  SuperView.m
//  手动布局子视图
//
//  Created by Antony x on 2018/11/1.
//  Copyright © 2018年 Antony x. All rights reserved.
//

#import "SuperView.h"

@implementation SuperView

-(void) createSubViews {
    
    // 左上角视图
    _view01 = [[UIView alloc] init];
    _view01.frame = CGRectMake(0, 0, 40, 40);
    
    // 右上角视图
    _view02 = [[UIView alloc] init];
    _view02.frame = CGRectMake(self.bounds.size.width - 40, 0, 40, 40);
    
    // 右下角视图
    _view03 = [[UIView alloc] init];
    _view03.frame = CGRectMake(self.bounds.size.width - 40, self.bounds.size.height - 40, 40, 40);
    
    // 左下角视图
    _view04 = [[UIView alloc] init];
    _view04.frame = CGRectMake(0, self.bounds.size.height - 40, 40, 40);
    
    // 横向的视图
    _view05 = [[UIView alloc] init];
    _view05.frame = CGRectMake(0, self.bounds.size.height / 2 - 20, self.bounds.size.width, 40);
    
    _view01.backgroundColor = [UIColor orangeColor];
    _view02.backgroundColor = [UIColor orangeColor];
    _view03.backgroundColor = [UIColor orangeColor];
    _view04.backgroundColor = [UIColor orangeColor];
    _view05.backgroundColor = [UIColor orangeColor];
    
    [self addSubview:_view01];
    [self addSubview:_view02];
    [self addSubview:_view03];
    [self addSubview:_view04];
    [self addSubview:_view05];
    
}


// 需要重新布局时 调用
// 通过此函数重新设定子视图的位置
// 手动调整子视图的位置
- (void)layoutSubviews {
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1];
    _view01.frame = CGRectMake(0, 0, 40, 40);
    _view02.frame = CGRectMake(self.bounds.size.width - 40, 0, 40, 40);
    _view03.frame = CGRectMake(self.bounds.size.width - 40, self.bounds.size.height - 40, 40, 40);
    _view04.frame = CGRectMake(0, self.bounds.size.height - 40, 40, 40);
    _view05.frame = CGRectMake(0, self.bounds.size.height / 2 - 20, self.bounds.size.width, 40);
    [UIView commitAnimations];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
