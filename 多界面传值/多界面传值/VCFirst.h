//
//  VCFirst.h
//  多界面传值
//
//  Created by Antony x on 2018/11/5.
//  Copyright © 2018年 Antony x. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "VCSecond.h"

NS_ASSUME_NONNULL_BEGIN

@interface VCFirst : UIViewController<VCSecondDelegate>
-(void)changeColor:(UIColor *)color;
@end

NS_ASSUME_NONNULL_END
