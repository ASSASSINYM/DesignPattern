//
//  IDriver.h
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/8.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ICar.h"
NS_ASSUME_NONNULL_BEGIN

@protocol IDriver <NSObject>
@required
- (void)drive:(id<ICar>)car;

//用作单元测试
@optional
- (NSString *)driveUnitTest:(id<ICar>)car;

@end

NS_ASSUME_NONNULL_END
