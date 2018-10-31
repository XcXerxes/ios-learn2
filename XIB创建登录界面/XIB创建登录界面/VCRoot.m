//
//  VCRoot.m
//  XIB创建登录界面
//
//  Created by Antony x on 2018/10/31.
//  Copyright © 2018年 Antony x. All rights reserved.
//

#import "VCRoot.h"

@interface VCRoot ()

@end

@implementation VCRoot

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)pressLogin:(UIButton *)sender {
    NSString *uName = @"antony";
    NSString *uPass = @"123456";
    
    //
    if ([_mTFUserName.text isEqual:uName] && [_mTFPassword.text isEqual:uPass] ) {
        NSLog(@"登录成功！！！");
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"提示" message:@"登录成功" preferredStyle: UIAlertControllerStyleAlert];
        UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"确认" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            [self dismissViewControllerAnimated:YES completion:nil];
        }];
        [alert addAction:okAction];
        [self presentViewController:alert animated:YES completion:nil];
        
    } else {
        NSLog(@"验证失败");
    }
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [_mTFUserName resignFirstResponder];
    [_mTFPassword resignFirstResponder];
}

- (IBAction)pressRegister:(UIButton *)sender {
}
@end
