//
//  BookModel.h
//  SDWebImage上
//
//  Created by Antony x on 2018/11/7.
//  Copyright © 2018年 Antony x. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BookModel : NSObject
@property (retain, nonatomic) NSString *mBookName;
@property (retain, nonatomic) NSString *mBookPrice;
@property (retain, nonatomic) NSString *mPublisher;
@property (retain, nonatomic) NSString *mImageURL;
@end

NS_ASSUME_NONNULL_END
