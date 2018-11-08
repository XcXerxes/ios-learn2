//
//  VCSecond.m
//  49_导航控制器动画
//
//  Created by Antony x on 2018/11/8.
//  Copyright © 2018年 Antony x. All rights reserved.
//

#import "VCSecond.h"

@interface VCSecond ()

@end

@implementation VCSecond

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"控制器二";
    
    _imageView = [UIImageView new];
    
    _imageView.frame = CGRectMake(40, 40, 320, 580);
    
    _imageView.image = [UIImage imageNamed:@"2.jpg"];
    
    [self.view addSubview:_imageView];
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    CATransition *amin = [CATransition animation];
    amin.duration = 1;
    amin.type = @"rippleEffect";
    amin.subtype = kCATransitionFromRight;
    
    [self.navigationController.view.layer addAnimation:amin forKey:nil];
    [self.navigationController popViewControllerAnimated:YES];
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
