//
//  VCRoot.h
//  事件响应链
//
//  Created by Antony x on 2018/11/1.
//  Copyright © 2018年 Antony x. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MainView.h"
#import "SubView.h"

NS_ASSUME_NONNULL_BEGIN

@interface VCRoot : UIViewController
{
    // 主视图定义
    MainView *_mainView;
    
    // 子视图对象
    SubView *_subView;
}
@end

NS_ASSUME_NONNULL_END
