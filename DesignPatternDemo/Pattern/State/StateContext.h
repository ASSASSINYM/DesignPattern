//
//  StateContext.h
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/12.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import <Foundation/Foundation.h>
@class OpenningState;
@class ClosingState;
@class RunningState;
@class StoppingState;
@class LiftState;
NS_ASSUME_NONNULL_BEGIN

@interface StateContext : NSObject
+ (StateContext *)sharedManager;
@property (nonatomic,strong) OpenningState * openingState;
@property (nonatomic,strong) ClosingState * closingState;
@property (nonatomic,strong) RunningState * runningState;
@property (nonatomic,strong) StoppingState * stoppingState;
@property (nonatomic,strong) LiftState * liftState;
- (void)open;
- (void)close;
- (void)run;
- (void)stop;
@end

NS_ASSUME_NONNULL_END
