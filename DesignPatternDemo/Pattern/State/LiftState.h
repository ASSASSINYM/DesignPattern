//
//  LiftState.h
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/12.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@class StateContext;

NS_ASSUME_NONNULL_BEGIN

@interface LiftState : NSObject
@property (nonatomic,strong) StateContext * context;
@end

@interface LiftState(Abstract)

- (void)open;
- (void)close;
- (void)run;
- (void)stop;
@end

NS_ASSUME_NONNULL_END
