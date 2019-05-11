//
//  Context.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/11.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "Context.h"

@interface Context()
{
    id<IStrategy> _straegy;
}
@end

@implementation Context

- (instancetype)initWithStrategy:(id<IStrategy>)straegy{
    self = [super init];
    if (self) {
        _straegy = straegy;
    }
    return self;
}

- (void)operate{
    [_straegy operate];
}

@end
