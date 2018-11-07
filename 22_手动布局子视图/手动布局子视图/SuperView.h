//
//  SuperView.h
//  手动布局子视图
//
//  Created by Antony x on 2018/11/1.
//  Copyright © 2018年 Antony x. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SuperView : UIView
{
    UIView *_view01;
    UIView *_view02;
    UIView *_view03;
    UIView *_view04;
    UIView *_view05;
    UIView *_view06;
}

-(void)createSubViews;
@end

NS_ASSUME_NONNULL_END
