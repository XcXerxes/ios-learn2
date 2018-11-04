//
//  ViewController.m
//  NSUserDefaults
//
//  Created by xiacan on 2018/11/3.
//  Copyright © 2018 iotek. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 创建圆角按钮
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn.frame = CGRectMake(100, 100, 80, 40);
    [btn setTitle:@"写入文件" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(pressWrite) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *btnRead = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btnRead.frame = CGRectMake(100, 200, 80, 40);
    [btnRead setTitle:@"读取文件" forState:UIControlStateNormal];
    [btnRead addTarget:self action:@selector(pressRead) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn];
    [self.view addSubview:btnRead];
    // Do any additional setup after loading the view, typically from a nib.
}

// 写入数据事件调用
-(void)pressWrite {
    // 定义一个用户默认数据对象
    // 不需要alloc 创建， NSUserDefaults 是单例模式
    // standardUserDefaults: 获取全局唯一的实例对象
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    
    // 存储字符串对象
    // 可以将对象存储到 内部 文件中
    // 参数1: 存储对象 id
    // 参数2： 存储的 key 值 NSString
    [ud setObject:@"antony" forKey:@"name"];
    
    NSNumber *num = [NSNumber numberWithInt:100];
    // 存储number 数据对象
    // 只能存储能够文件化的对象
    [ud setObject:num forKey:@"num"];
    
    // 不能存储动态创建的对象
    // 例如 视图对象等等...
    // [ud setObject:self.view forKey:@"view"];
    
    // 存储整型数据
    [ud setInteger:123 forKey:@"int"];
    
    // 存储bool 值
    [ud setBool:YES forKey:@"bool"];
    
    // 存储float
    [ud setFloat:123.123 forKey:@"float"];
    
    // 创建一个可文件化的数组
    NSArray *array = [NSArray arrayWithObjects:@"11",@"22",@"33",nil];
    
    // 存储数组
    [ud setObject:array forKey:@"array"];
}

-(void)pressRead {
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    // 读取文件， 然后把 id 类型 强制转换
    id object = [ud objectForKey:@"name"];
    NSString *name = (NSString *) object;
    NSLog(@"name===%@", name);
    
    object = [ud objectForKey:@"num"];
    NSNumber *num = (NSNumber *) object;
    NSLog(@"name ======%@", num);
    
    int iV = (int) [ud objectForKey:@"int"];
    NSLog(@"int=======%ld", iV);
    
    NSArray *array = [ud objectForKey:@"array"];
    NSLog(@"array=========%@", array);
    
    // 删除key
    [ud removeObjectForKey:@"int"];
}
@end
