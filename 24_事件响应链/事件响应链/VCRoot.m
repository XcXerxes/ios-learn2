//
//  VCRoot.m
//  事件响应链
//
//  Created by Antony x on 2018/11/1.
//  Copyright © 2018年 Antony x. All rights reserved.
//

#import "VCRoot.h"

@interface VCRoot ()

@end

@implementation VCRoot

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // 创建主视图对象
    _mainView = [[MainView alloc] init];
    _mainView.frame = CGRectMake(50, 50, 200, 300);
    _mainView.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:_mainView];
    
    // 创建子视图对象
    _subView = [[SubView alloc] init];
    _subView.frame = CGRectMake(30, 30, 100, 200);
    _subView.backgroundColor = [UIColor purpleColor];
    
    [_mainView addSubview:_subView];
    
    self.view.backgroundColor = [UIColor blueColor];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"VCRoot 事件响应！！next=======%@", self.nextResponder);
    
    // 手动向下传递
    [super touchesBegan:touches withEvent:event];
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
