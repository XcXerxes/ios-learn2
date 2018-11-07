//
//  ViewController.h
//  JSON数据解析
//
//  Created by Antony x on 2018/11/5.
//  Copyright © 2018年 Antony x. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
// 数据视图的代理协议
<
UITableViewDelegate,
UITableViewDataSource
>
{
    // 数据视图的定义
    UITableView *_tableView;
    
    // 书籍数组
    NSMutableArray *_arrayBooks;
}
@end

