//
//  ViewController.h
//  UITableView协议
//
//  Created by Antony x on 2018/11/5.
//  Copyright © 2018年 Antony x. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
<
// 普通代理协议
UITableViewDelegate,
// 数据代理协议
UITableViewDataSource
>
{
    UITableView *_tableView;
    // 申明一个数据源
    NSMutableArray *_arrayData;
}

@end

