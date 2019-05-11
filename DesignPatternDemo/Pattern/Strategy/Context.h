//
//  Context.h
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/11.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IStrategy.h"

NS_ASSUME_NONNULL_BEGIN

@interface Context : NSObject
- (instancetype)initWithStrategy:(id<IStrategy>)straegy;
- (void)operate;
@end

NS_ASSUME_NONNULL_END
