//
//  ViewController.m
//  UIScrollView的高级功能
//
//  Created by Antony x on 2018/10/30.
//  Copyright © 2018年 Antony x. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // 创建滚动视图
    _scrollView = [[UIScrollView alloc] init];
    
    // 设置滚动视图的位置
    _scrollView.frame = CGRectMake(10, 50, 300, 400);
    
    // 取消弹动效果
    _scrollView.bounces = NO;
    
    // 是否允许通过点击屏幕让滚动视图响应事件
    // YES: 可以接受触屏事件
    // NO: 不接受
    // _scrollView.userInteractionEnabled = NO;
    
    //设置画布大小， 纵向效果
    _scrollView.contentSize = CGSizeMake(300, 400*5);
    
    // 滚动视图画布的移动位置， 偏移位置
    // 功能：决定画布显示的最终图像结果
    _scrollView.contentOffset = CGPointMake(0, 0);
    
    // 取消按页滚动
    _scrollView.pagingEnabled = NO;
    
    for (int i=0; i<5; i++) {
        // 生成图片名称
        NSString *strName = [NSString stringWithFormat:@"%d.jpg", i+1];
        UIImage *image = [UIImage imageNamed:strName];
        // c创建图片视图对象以及将图片对象 赋值给 图片视图对象
        UIImageView *iView = [[UIImageView alloc] initWithImage:image];
        
        // 图片视图对象的位置和大小
        iView.frame = CGRectMake(0, 400*i, 300, 400);
        
        // 加到滚动视图中
        [_scrollView addSubview:iView];
    }
    
    [self.view addSubview:_scrollView];
    
    // 将当前视图控制器作为代理对象
    _scrollView.delegate = self;
}


// 当滚动视图移动时，只要offset坐标发生变化， 就会调用此函数
// 参数： 调用此协议的滚动视图对象
// 可以使用此函数监控滚动视图的位置
- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    NSLog(@"y=== %f", scrollView.contentOffset.y);
}

// 滚动视图结束拖动时调用此函数
- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate {
    NSLog(@"Did End Drag!!");
}

// 滚动视图即将开始被拖动时
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView {
    NSLog(@"Will Begin Drag!!");
}

// 视图即将结束拖动时调用
- (void)scrollViewWillEndDragging:(UIScrollView *)scrollView withVelocity:(CGPoint)velocity targetContentOffset:(inout CGPoint *)targetContentOffset {
    NSLog(@"Will End Drag!!");
}

// 即将减速时调用
- (void)scrollViewWillBeginDecelerating:(UIScrollView *)scrollView {
    NSLog(@"Will Begin Deceleratg");
}

// 视图已经结束减速时调用， 视图停止的瞬间调用
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView {
    NSLog(@"视图停止移动！！");
}
- (void)scrollViewDidScrollToTop:(UIScrollView *)scrollView {
    NSLog(@"scroll to top");
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    // 让滚动视图移动到指定位置， 动画移动
    [_scrollView scrollRectToVisible:CGRectMake(0, 0, 300, 400) animated:YES];
}


@end
