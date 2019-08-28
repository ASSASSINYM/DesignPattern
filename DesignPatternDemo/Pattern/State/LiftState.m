//
//  LiftState.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/12.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "LiftState.h"

@interface LiftState ()
@property (nonatomic,weak) StateContext * stateContext;
@end

@implementation LiftState

- (id)initWithContext:(StateContext *)context{
    self = [super init];
    if (self) {
        _stateContext = context;
    }
    return self;
}

- (StateContext *)getStateContext{
    return _stateContext;
}

@end
