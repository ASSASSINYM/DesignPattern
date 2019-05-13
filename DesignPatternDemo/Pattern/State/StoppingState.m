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
    StateContext * shareManager = [StateContext sharedManager];
    [super.context setLiftState:shareManager.openingState];

    [[super.context liftState] open];
}

- (void)run{
    StateContext * shareManager = [StateContext sharedManager];
    [super.context setLiftState:shareManager.runningState];

    [[[super context] liftState] run];
}

- (void)stop{
    NSLog(@"电梯停止了");
}

@end
