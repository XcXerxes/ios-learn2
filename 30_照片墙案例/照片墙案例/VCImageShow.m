//
//  VCImageShow.m
//  照片墙案例
//
//  Created by Antony x on 2018/11/2.
//  Copyright © 2018年 Antony x. All rights reserved.
//

#import "VCImageShow.h"

@interface VCImageShow ()

@end

@implementation VCImageShow

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"图片";
    
    UIScrollView *sw = [[UIScrollView alloc] init];
    
    sw.frame = CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height);
    sw.contentSize = CGSizeMake(self.view.bounds.size.width * 15, self.view.bounds.size.height);
    
    sw.pagingEnabled = YES;
    
    sw.scrollEnabled = YES;
    
    
    // 创建图片集合
    for (int i=0; i<15; i++) {
        UIImageView *iView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:[NSString stringWithFormat:@"%d.jpg", i+1]]];
        iView.frame = CGRectMake(i*self.view.bounds.size.width, 0, self.view.bounds.size.width, self.view.bounds.size.height);
        [sw addSubview: iView];
    }
    // 根据用户点击的图片，滚动到当前的 图片视图中！！！
    [sw setContentOffset:CGPointMake((_imageTag-101)*self.view.bounds.size.width, 0)];
    
    [self.view addSubview:sw];
    _imageView = [[UIImageView alloc] init];
    self.view.backgroundColor = [UIColor orangeColor];
    _imageView.frame = CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height);
    // 方法2: 通过image 实现
    /*
    _imageView.image = _image;
     **/
    
    // 方法3: 通过tag 实现
    _imageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"%ld.jpg", _imageTag-100]];
    
    
    // 一个视图对象只能有一个根视图
    // 当我们把视图添加到新的 父视图上 子视图就会被从 原来的 父视图 下被删除掉了！！！！
    // [self.view addSubview:_imageView];
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
