//
//  ViewController.m
//  UIButton
//
//  Created by xiacan on 2018/10/27.
//  Copyright © 2018 iotek. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


// 创建带事件的按钮
-(void)createEventButton {
    // 创建圆角按钮
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    btn.frame = CGRectMake(100, 400, 80, 40);
    // 设置按钮 文字 和状态类型
    [btn setTitle:@"事件按钮" forState:UIControlStateNormal];
    
    /*
     向按钮添加事件函数
     参数1: "谁" 来实现事件函数， 实现者对象就是 "谁"
     参数2: @selector(pressBtn): 函数对象， 当按钮满足 参数3 的事件类型时， 触发函数；
     参数3: UIControlEvent: 事件处理函数类型
     UIControlEventTouchUpInside（常用）： 当手指离开屏幕并且手指的位置在按钮范围内触发事件
     UIControlEventTouchDown: 当手指触碰到屏幕上时
     */
    [btn addTarget:self action:@selector(pressBtn:) forControlEvents:UIControlEventTouchUpInside];
    [btn addTarget:self action:@selector(downBtn) forControlEvents:UIControlEventTouchDown];
    [btn addTarget:self action:@selector(outSideBtn) forControlEvents:UIControlEventTouchUpOutside];

    
    [self.view addSubview:btn];
    
    UIButton *btn1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn1.frame = CGRectMake(100, 500, 80, 40);
    [btn1 setTitle:@"事件按钮1" forState:UIControlStateNormal];
    
    /**
     事件使用时， 多个按钮可以调用同一个函数，
     通过传递参数区分!!!
     */
    [btn1 addTarget:self action:@selector(pressBtn:) forControlEvents: UIControlEventTouchUpInside];
    [self.view addSubview:btn1];
    
    // 设置按钮的标记值， 为了区分按钮的唯一标识
    btn.tag = 101;
    btn1.tag = 102;
}
-(void)pressBtn1 {
    NSLog(@"按钮1 被按下!!!");
}
-(void)outSideBtn {
    NSLog(@"按钮在范围外按下了!!!!");
}

// 参数为 调用 此函数按钮对象本身
-(void) pressBtn:(UIButton *)btn {
    if (btn.tag == 101) {
        NSLog(@"按钮被按下了!!!!");
    } else if (btn.tag == 102) {
        NSLog(@"按钮1被按下了!!!!");
    }
}
-(void) downBtn {
    NSLog(@"按钮被范围内按下");
}
// 创建带图片的 按钮
-(void)createImageButton {
    /*
     创建一个自定义类型的 button
     */
    UIButton *btnImage = [UIButton buttonWithType:UIButtonTypeCustom];
    btnImage.frame = CGRectMake(100, 200, 100, 40);
    // 图片的加载
    UIImage *icon01 = [UIImage imageNamed:@"icon01.png"];
    UIImage *icon02 = [UIImage imageNamed:@"icon02.png"];
    
    /*
     设置按钮图片的方法
     参数1: 显示的图片对象
     参数2: 控件的状态
     */
    [btnImage setImage:icon01 forState:UIControlStateNormal];
    [btnImage setImage:icon02 forState:UIControlStateHighlighted];
    [self.view addSubview:btnImage];
}

// 创建基本的圆角按钮

-(void)createUIButton {
    /*
     创建一个 btn 对象，根据类型来创建 btn
     圆角类型 btn: UIButtonTypeRoundedRect
     通过类方法来 创建buttonWithType: 类名 + 方法名
     */
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    // 设置 button 按钮的位置
    button.frame = CGRectMake(100, 100, 100, 40);
    
    /*
     设置按钮的文字内容
     @parameter
     参数1: 字符串类型， 显示到按钮的文字
     参数2: 设置文字显示的状态类型： UIControlStateNormal, 正常状态
     */
    [button setTitle:@"按钮01" forState:UIControlStateNormal];
    
    /*
     button 按下时的 状态的 文字的显示
     参数1: 显示的文字
     参数2: 显示的文字状态：UIControlStateHighlighted
     */
    [button setTitle:@"按钮按下" forState:UIControlStateHighlighted];
    
    // 设置button 的背景颜色
    button.backgroundColor = [UIColor grayColor];
    
    /*
     设置文字显示的颜色
     参数1: 颜色
     参数2: 状态
     */
    [button setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    
    /*
     button 按下时 文字的颜色
     */
    [button setTitleColor:[UIColor orangeColor] forState:UIControlStateHighlighted];
    
    // 设置按钮文字的风格颜色
    // 优先级低， 如果设置了 title Color  就会失效
    [button setTintColor: [UIColor whiteColor]];
    
    /*
     设置字体大小
     titleLabel: UILabel 对象
     */
    button.titleLabel.font = [UIFont systemFontOfSize:12];
    
    // 添加到视图
    [self.view addSubview:button];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self createUIButton];
    [self createImageButton];
    [self createEventButton];
    // Do any additional setup after loading the view, typically from a nib.
}


@end
