//
//  ViewController.h
//  UITableView高级协议
//
//  Created by Antony x on 2018/11/5.
//  Copyright © 2018年 Antony x. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
<UITableViewDelegate,
UITableViewDataSource
>
{
    // 数据视图
    UITableView *_tableView;
    // 数据源
    NSMutableArray *_arrayData;
    
    // 添加导航按钮
    UIBarButtonItem *_btnEdit;
    UIBarButtonItem *_btnFinish;
    UIBarButtonItem *_btnDelete;
    
    BOOL _isEdit;
}

@end

