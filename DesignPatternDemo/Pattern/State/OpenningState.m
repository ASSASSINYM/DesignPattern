//
//  OpenningState.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/12.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "OpenningState.h"
#import "StateContext.h"

@implementation OpenningState

- (void)close{
    StateContext * shareManager = [StateContext sharedManager];
    [super.context setLiftState:shareManager.closingState];
    [[[super context] liftState] close];
}

- (void)open{
    NSLog(@"电梯门开启");
}

- (void)run{
    
}

- (void)stop{
    
}

@end
