//
//  VCSecond.m
//  导航控制器切换
//
//  Created by Antony x on 2018/11/1.
//  Copyright © 2018年 Antony x. All rights reserved.
//

#import "VCSecond.h"
#import "VCThird.h"

@interface VCSecond ()

@end

@implementation VCSecond

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor greenColor];
    
    self.title = @"视图二";
    
    UIBarButtonItem *btnNext = [[UIBarButtonItem alloc] initWithTitle:@"第三级" style:UIBarButtonItemStyleDone target:self action:@selector(pressNext)];
    self.navigationItem.rightBarButtonItem = btnNext;
    // Do any additional setup after loading the view.
}
-(void)pressNext {
    VCThird *vcThird = [[VCThird alloc] init];
    
    // 跳转到第三级视图的控制器
    [self.navigationController pushViewController: vcThird animated:YES];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
