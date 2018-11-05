//
//  BookModel.h
//  JSON数据解析
//
//  Created by Antony x on 2018/11/5.
//  Copyright © 2018年 Antony x. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

// 书籍的数据模型
@interface BookModel : NSObject
{
    // 书名
    NSString *_bookName;
    // 出版社名称
    NSString *_publisher;
    // 书籍价格
    NSString *_price;
    // 作者数组
    NSMutableArray *_authorArray;
}
@property (retain, nonatomic) NSString *mBookName;
@property (retain, nonatomic) NSString *mPublisher;
@property (retain, nonatomic) NSString *mPrice;
@property (retain, nonatomic) NSMutableArray *mAuthorArray;

@end

NS_ASSUME_NONNULL_END
