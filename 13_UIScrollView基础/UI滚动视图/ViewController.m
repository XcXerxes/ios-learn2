//
//  ViewController.m
//  UI滚动视图
//
//  Created by Antony x on 2018/10/30.
//  Copyright © 2018年 Antony x. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize scrollView = _scrollView;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    /*
     创建滚动视图
     可以对视图内容进行滚屏查看
     **/
    self.scrollView = [[UIScrollView alloc] init];
    
    double width = [UIScreen mainScreen].bounds.size.width;
    double height = [UIScreen mainScreen].bounds.size.height;
    
    // 设置滚动视图的位置和 宽高
    self.scrollView.frame = CGRectMake(0, 0, width, height);
    
    //是否按照整页来滚动视图
    self.scrollView.pagingEnabled = YES;
    
    //是否可以开启滚动效果
    self.scrollView.scrollEnabled = YES;
    
    // 设置画布的大小， 画布显示在滚动视图内部
    // 一般大于 frame 的宽
    self.scrollView.contentSize = CGSizeMake(width*5, height);
    
    // 是否开启边缘弹动效果
    self.scrollView.bounces = NO;
    
    //开启横向弹动效果
    self.scrollView.alwaysBounceHorizontal = YES;
    
    // 开启纵向弹动效果
    self.scrollView.alwaysBounceVertical = YES;
    
    // 是否显示横向滚动条
    self.scrollView.showsHorizontalScrollIndicator = YES;
    
    // 是否显示纵向滚动条
    self.scrollView.showsVerticalScrollIndicator = YES;
    
    // 滚动条背景颜色
    self.scrollView.backgroundColor = [UIColor yellowColor];
    
    
    // 循环创建图片视图
    for (int i = 0; i<5; i++) {
        NSString *strName = [NSString stringWithFormat:@"%d.jpg", i+1];
        UIImage *image = [UIImage imageNamed:strName];
        UIImageView *iView = [[UIImageView alloc] initWithImage:image];
        iView.frame = CGRectMake(width*i, 0, width, height);
        [self.scrollView addSubview:iView];
    }
    
    [self.view addSubview:self.scrollView];
    
}


@end
