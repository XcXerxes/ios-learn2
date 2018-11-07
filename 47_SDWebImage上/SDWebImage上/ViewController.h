//
//  ViewController.h
//  SDWebImage上
//
//  Created by Antony x on 2018/11/7.
//  Copyright © 2018年 Antony x. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
<
// 数据视图的协议函数
UITableViewDelegate,
UITableViewDataSource
>
{
    // 申明数据视图
    UITableView *_tableView;
    // 数据源对象
    NSMutableArray *_arrayData;
    
    // 刷新加载数据按钮
    UIBarButtonItem *_btnLoadData;
    
    // 编辑按钮
    UIBarButtonItem *_btnEdit;
}

@end

