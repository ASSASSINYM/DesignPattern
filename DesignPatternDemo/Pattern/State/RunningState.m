//
//  RunningState.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/13.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "RunningState.h"
#import "StateContext.h"

@implementation RunningState

- (void)close{
    
}

- (void)open{
    
}

- (void)run{
    NSLog(@"电梯上下运行");
}

- (void)stop{
    StateContext * shareManager = [StateContext sharedManager];
    [super.context setLiftState:shareManager.stoppingState];

    [[super.context liftState] stop];
}

@end
