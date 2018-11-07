//
//  ViewController.h
//  UITableView基础
//
//  Created by Antony x on 2018/11/5.
//  Copyright © 2018年 Antony x. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
<
// 实现数据视图的普通协议，
// 数据视图的普通事件处理
UITableViewDelegate,
// 实现数据视图的数据代理协议
// 处理数据视图的数据代理
UITableViewDataSource
>
{
    // 定义一个数据s视图对象
    // 数据视图用来显示大量相同格式的 大量信息的视图
    // 例如： 通讯录， qq好友， 微信朋友圈
    UITableView *_tableView;
}

@end

