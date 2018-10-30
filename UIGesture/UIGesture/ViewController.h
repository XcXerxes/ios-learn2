//
//  ViewController.h
//  UIGesture
//
//  Created by Antony x on 2018/10/30.
//  Copyright © 2018年 Antony x. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

{
    /*
     UITapGestureRecognizer 的点击手势 基本属性
     
     numberOfTapsRequired: 点击次数
     numberOfTouchRequired: 点击手指个数
     UIView: addGestureRecognizer 视图添加手势
     requiredGestureRecognizerToFail 手势失效函数
     **/
    UIImageView *_imageView;
    
}
@end

