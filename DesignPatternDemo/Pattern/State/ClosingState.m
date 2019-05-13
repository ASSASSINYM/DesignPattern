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
    StateContext * shareManager = [StateContext sharedManager];
    [super.context setLiftState:shareManager.openingState];

    [[super.context liftState] open];
}

- (void)run{
    StateContext * shareManager = [StateContext sharedManager];
    [super.context setLiftState:shareManager.runningState];

    [[super.context liftState] run];
}

- (void)stop{
    StateContext * shareManager = [StateContext sharedManager];
    [super.context setLiftState:shareManager.stoppingState];

    [[super.context liftState] stop];
}

@end
