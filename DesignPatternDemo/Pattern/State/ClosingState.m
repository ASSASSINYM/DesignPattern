//
//  ClosingState.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/12.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "ClosingState.h"
#import "StateContext.h"

@implementation ClosingState

- (void)close{
    NSLog(@"电梯门关闭");
}

- (void)open{
    StateContext * _stateContext = [self getStateContext];
    [_stateContext setLiftState:_stateContext.openingState];

    [[_stateContext liftState] open];
}

- (void)run{
    StateContext * _stateContext = [self getStateContext];
    [_stateContext setLiftState:_stateContext.runningState];

    [[_stateContext liftState] run];
}

- (void)stop{
    StateContext * _stateContext = [self getStateContext];
    [_stateContext setLiftState:_stateContext.stoppingState];

    [[_stateContext liftState] stop];
}

@end
