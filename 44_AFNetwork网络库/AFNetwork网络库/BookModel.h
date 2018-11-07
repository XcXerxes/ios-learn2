//
//  BookModel.h
//  AFNetwork网络库
//
//  Created by Antony x on 2018/11/7.
//  Copyright © 2018年 Antony x. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BookModel : NSObject
// 书籍的名称
@property (retain, nonatomic) NSString *mBookName;
// 价格
@property (retain, nonatomic) NSString *mBookPrice;
// 出版社
@property (retain, nonatomic) NSString *mBookPublisher;
// 作者
@property (retain, nonatomic) NSMutableArray *mAuthor;

@property (retain, nonatomic) NSString *mScore;
@end

NS_ASSUME_NONNULL_END
