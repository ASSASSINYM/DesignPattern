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
//和命令模式相似吗？保留意见，感觉StateContext持有了LiftState,LiftState又持有了StateContext。不会循环引用吗？
- (void)main{
    StateContext * context = [StateContext sharedManager];
    [context setLiftState:context.closingState];
    [context open];
    [context close];
    [context run];
    [context stop];
}

@end
