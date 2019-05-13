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

+ (StateContext *)sharedManager
{
    static StateContext *sharedInstance = nil;
    static dispatch_once_t predicate;
    dispatch_once(&predicate, ^{
        sharedInstance = [[self alloc] init];
    });
    
    return sharedInstance;
}

- (void)setLiftState:(LiftState *)liftState{
    _liftState = liftState;
    [_liftState setContext:self];
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

- (OpenningState *)openingState{
    if (!_openingState) {
        _openingState = [OpenningState new];
    }
    return _openingState;
}

- (ClosingState *)closingState{
    if (!_closingState) {
        _closingState = [ClosingState new];
    }
    return _closingState;
}

- (RunningState *)runningState{
    if (!_runningState) {
        _runningState = [RunningState new];
    }
    return _runningState;
}

- (StoppingState *)stoppingState{
    if (!_stoppingState) {
        _stoppingState = [StoppingState new];
    }
    return _stoppingState;
}

@end
