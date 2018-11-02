//
//  VCRoot.m
//  照片墙案例
//
//  Created by Antony x on 2018/11/2.
//  Copyright © 2018年 Antony x. All rights reserved.
//

#import "VCRoot.h"
#import "VCImageShow.h"

@interface VCRoot ()

@end

@implementation VCRoot

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"照片墙";
    // 导航不透明
    self.navigationController.navigationBar.translucent = NO;
    
    // 滚动视图
    UIScrollView *sv = [[UIScrollView alloc] init];
    
    sv.frame = CGRectMake(5, 10, self.view.bounds.size.width, self.view.bounds.size.height);
    
    sv.contentSize = CGSizeMake(self.view.bounds.size.width, self.view.bounds.size.height * 1.5);
    
    sv.showsVerticalScrollIndicator = NO;
    
    // 打开交换时间
    sv.userInteractionEnabled = YES;
    // 创建图片
    for (int i=0; i < 15; i++) {
        NSString *strName = [NSString stringWithFormat:@"%d.jpg", i+1];
        UIImage *image = [UIImage imageNamed:strName];
        UIImageView *iView = [[UIImageView alloc] initWithImage:image];
        
        iView.frame = CGRectMake(3+(i%3)*104, (i/3)*160, self.view.bounds.size.width /3 -10, 160);
        
        [sv addSubview:iView];
        
        // 开启交互模式
        iView.userInteractionEnabled = YES;
        
        // 创建点击手势
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(pressTap:)];
        // 单次点击
        tap.numberOfTapsRequired = 1;
        
        // 单次手指
        tap.numberOfTouchesRequired = 1;
        [iView addGestureRecognizer:tap];
    }
    
    [self.view addSubview:sv];
}

-(void)pressTap:(UITapGestureRecognizer *)tap {
    NSLog(@"1234!!!");
    VCImageShow *imageShow = [[VCImageShow alloc] init];
    [self.navigationController pushViewController:imageShow animated:YES];
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
