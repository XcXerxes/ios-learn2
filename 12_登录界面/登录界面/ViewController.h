//
//  ViewController.h
//  登录界面
//
//  Created by Antony x on 2018/10/30.
//  Copyright © 2018年 Antony x. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    /*
     登录界面的组成
     用户名提示：输入框 -> UITextField
     密码提示： 密码输入框 -> UITextField
     登录按钮   ---> UIButton
     注册按钮   ----> UIButton
     **/
    // 用户名提示Label
    UILabel *_lbUserName;
    // 密码提示Label
    UILabel *_lbPassword;
    
    // 用户名输入框
    UITextField *_tfUserName;
    // 密码输入框
    UITextField *_tfPassword;
    
    // 登录按钮
    UIButton *_btLogin;
    
    // 注册按钮
    UIButton *_btRegister;
}

@end

