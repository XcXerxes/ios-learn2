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
        // 创建 远程URL 的图片
        /*NSString *str = @"https://picsum.photos/300/400?image=";
        NSString *strName = [NSString stringWithFormat:@"%d", i+1];
        NSString *str1 = [str stringByAppendingString:strName];
        NSURL *imageURL = [NSURL URLWithString:str1];
        UIImage *image = [UIImage imageWithData:[NSData dataWithContentsOfURL:imageURL]];*/
        UIImage *image = [UIImage imageNamed: [NSString stringWithFormat:@"%d.jpg", i+1]];
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
        
        iView.tag = 101 + i;
    }
    
    [self.view addSubview:sv];
}

// 方法二： 通过 image 传递实现

/*-(void)pressTap:(UITapGestureRecognizer *)tap {
    NSLog(@"1234!!!");
    UIImageView *imageView = (UIImageView *)tap.view;
    VCImageShow *imageShow = [[VCImageShow alloc] init];
    // 传递 image  就可以实现
    imageShow.image = imageView.image;
    [self.navigationController pushViewController:imageShow animated:YES];
}*/
-(void)pressTap: (UITapGestureRecognizer *)tap {
    UIImageView *imageView = (UIImageView *)tap.view;
    VCImageShow *imageShow = [[VCImageShow alloc] init];
    
    imageShow.imageTag = imageView.tag;
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
