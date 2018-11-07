//
//  ViewController.h
//  UITextField
//
//  Created by Antony x on 2018/10/29.
//  Copyright © 2018年 Antony x. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITextFieldDelegate>
{
    /*
     定义一个 textField
     文本输入区域
     表单控件
     只能输入单行文字
     */
    UITextField *_textField;
}
@property (retain, nonatomic) UITextField *textField;
@end

