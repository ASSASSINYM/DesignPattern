//
//  Handler.h
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/11.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Women.h"

NS_ASSUME_NONNULL_BEGIN

@interface Handler : NSObject
- (instancetype)initWithLevel:(LevelType)leveltype;
- (void)setNext:(Handler *)handler;
- (void)handleMessage:(id<IWomen>)women;
@end

@interface Handler(Abstract)
- (void)respons:(id<IWomen>)women;
@end

NS_ASSUME_NONNULL_END
