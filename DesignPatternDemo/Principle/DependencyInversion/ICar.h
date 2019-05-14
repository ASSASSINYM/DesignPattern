//
//  ICar.h
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/8.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol ICar <NSObject>
@required
- (void)run;
//用作单元测试
@optional
- (NSString *)runUnitTest;
@end


NS_ASSUME_NONNULL_END
