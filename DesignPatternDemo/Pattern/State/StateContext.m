//
//  StateContext.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/12.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "StateContext.h"
#import "OpenningState.h"
#import "ClosingState.h"
#import "StoppingState.h"
#import "RunningState.h"

@interface StateContext()

@end

@implementation StateContext

- (instancetype)init{
    self = [super init];
    if (self) {
        _openingState = [[OpenningState alloc] initWithContext:self];
        _closingState = [[ClosingState alloc] initWithContext:self];
        _runningState = [[RunningState alloc] initWithContext:self];
        _stoppingState = [[StoppingState alloc] initWithContext:self];
        
        [self setLiftState:_closingState];
    }
    return self;
}

- (void)setLiftState:(LiftState *)liftState{
    _liftState = liftState;
}

- (void)open{
    [_liftState open];
}

- (void)close{
    [_liftState close];
}

- (void)run{
    [_liftState run];
}

- (void)stop{
    [_liftState stop];
}

- (void)dealloc{
    
}

@end
