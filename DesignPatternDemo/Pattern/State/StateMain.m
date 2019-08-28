//
//  StateMain.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/12.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "StateMain.h"
#import "StateContext.h"
#import "LiftState.h"
#import "ClosingState.h"

@implementation StateMain

- (void)main{
    StateContext * context = [StateContext new];
    [context open];
    [context close];
    [context run];
    [context stop];
}

@end
