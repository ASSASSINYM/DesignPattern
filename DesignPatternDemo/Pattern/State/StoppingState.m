//
//  StoppingState.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/13.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "StoppingState.h"
#import "StateContext.h"

@implementation StoppingState

- (void)close{
    
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
    NSLog(@"电梯停止了");
}

@end
