//
//  AbstractColleague.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/10.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "AbstractColleague.h"

@interface AbstractColleague ()
{
    
}
@end

@implementation AbstractColleague

- (instancetype)initWithMediator:(AbstractMediator *)mediator{
    self = [super init];
    if (self) {
        _mediator = mediator;
    }
    return self;
}

@end
