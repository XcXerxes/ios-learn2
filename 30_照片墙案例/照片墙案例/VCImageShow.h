//
//  VCImageShow.h
//  照片墙案例
//
//  Created by Antony x on 2018/11/2.
//  Copyright © 2018年 Antony x. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface VCImageShow : UIViewController

// 图像 tag
@property(nonatomic, assign)NSInteger imageTag;

// 图像对象
@property(nonatomic, retain) UIImage *image;

// 图像视图对象
@property(nonatomic, retain) UIImageView * imageView;
@end

NS_ASSUME_NONNULL_END
