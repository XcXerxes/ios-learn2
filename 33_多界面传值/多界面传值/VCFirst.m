//
//  VCFirst.m
//  多界面传值
//
//  Created by Antony x on 2018/11/5.
//  Copyright © 2018年 Antony x. All rights reserved.
//

#import "VCFirst.h"
#import "VCSecond.h"

@interface VCFirst ()

@end

@implementation VCFirst

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
- (void)changeColor:(UIColor *)color {
    self.view.backgroundColor = color;
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    VCSecond *vcSecond = [[VCSecond alloc] init];
    // 将当前的控制器作为代理对象赋值！！！
    vcSecond.delegate = self;
    [self.navigationController pushViewController:vcSecond animated:YES];
}
@end
