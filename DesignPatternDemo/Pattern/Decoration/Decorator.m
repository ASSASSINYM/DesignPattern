//
//  Decorator.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/11.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "Decorator.h"

@interface Decorator()
{
    SchoolReport * _sr;
}
@end

@implementation Decorator

- (instancetype)initWithSr:(SchoolReport *)sr{
    self = [super init];
    if (self) {
        _sr = sr;
    }
    return self;
}

- (void)report{
    [_sr report];
}

- (void)sign:(NSString *)name{
    [_sr sign:name];
}

@end
