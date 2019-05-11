//
//  Stock.h
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/10.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AbstractColleague.h"
/*
 实际业务可能是数据库
 */
NS_ASSUME_NONNULL_BEGIN

@interface Stock : AbstractColleague

- (void)increase:(NSInteger)number;
- (void)decrease:(NSInteger)number;
- (NSInteger)getStockNumber;
- (void)clearStock;
@end

NS_ASSUME_NONNULL_END
