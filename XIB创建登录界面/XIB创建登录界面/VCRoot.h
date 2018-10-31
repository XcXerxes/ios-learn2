//
//  VCRoot.h
//  XIB创建登录界面
//
//  Created by Antony x on 2018/10/31.
//  Copyright © 2018年 Antony x. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface VCRoot : UIViewController

// 使用 XIB 创建 UILabel 属性
// IBOutlet: 这个属性是在 XIB 中 创建的
@property (weak, nonatomic) IBOutlet UILabel *mUserName;

// XIB 密码属性
@property (weak, nonatomic) IBOutlet UILabel *mUserPassword;
@property (weak, nonatomic) IBOutlet UITextField *mTFUserName;


// XIB 输入密码属性
@property (weak, nonatomic) IBOutlet UITextField *mTFPassword;

// XIB 登录按钮属性
@property (weak, nonatomic) IBOutlet UIButton *mBTLogin;

// XIB 注册按钮属性
@property (weak, nonatomic) IBOutlet UIButton *mBTRegister;
- (IBAction)pressLogin:(UIButton *)sender;
- (IBAction)pressRegister:(UIButton *)sender;

@end

NS_ASSUME_NONNULL_END
