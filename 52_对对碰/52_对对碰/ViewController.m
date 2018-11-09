//
//  ViewController.m
//  52_对对碰
//
//  Created by Antony x on 2018/11/9.
//  Copyright © 2018年 Antony x. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor blackColor];
    [self startGame];
}

-(void) startGame {
    NSArray *array = @[[UIColor blueColor], [UIColor orangeColor], [UIColor yellowColor], [UIColor greenColor], [UIColor grayColor], [UIColor purpleColor], [UIColor redColor]];
    
    for (int i = 0; i < 6; i++) {
        for (int j = 0; j < 6; j++) {
            // 创建按钮
            UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
            
            // 设置按钮的位置大小
            btn.frame = CGRectMake(10 + 60*j, 40+ 60 *i, 50, 50);
            int tag = arc4random() % array.count;
            btn.backgroundColor = (UIColor *) array[tag];
            btn.layer.masksToBounds = YES;
            btn.layer.cornerRadius = 10;
            
            btn.layer.shadowOffset = CGSizeMake(5, 5);
            btn.layer.shadowOpacity = .4;
            btn.layer.shadowColor = (__bridge CGColorRef _Nullable)([UIColor blackColor]);
            [btn addTarget:self action:@selector(pressBtn:) forControlEvents:UIControlEventTouchUpInside];
            
            [self.view addSubview:btn];
            btn.tag = tag;
        }
    }
}

-(void)pressBtn: (UIButton *)btn {
    // 创建一个静态变量 保持第一次按下的按钮
    static UIButton *btnFirst = nil;
    if (btnFirst == nil) {
        btnFirst = btn;
        [btnFirst.layer setBorderWidth:2];
        [btnFirst.layer setBorderColor:[UIColor whiteColor].CGColor];
        // 锁定第一个按钮
        btnFirst.enabled = NO;
    } else {
        // 按钮颜色相同
        if (btnFirst.tag == btn.tag) {
            btnFirst.hidden = YES;
            btn.hidden = YES;
            btnFirst = nil;
        } else {
            // 按钮颜色不相同的情况
            btnFirst = nil;
            btnFirst.enabled = YES;
            [btnFirst.layer setBorderWidth:0];
        }
    }
}


@end
