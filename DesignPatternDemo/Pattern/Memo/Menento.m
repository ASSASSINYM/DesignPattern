//
//  Menento.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/11.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "Menento.h"

@interface Menento()
{
}
@end

@implementation Menento

- (instancetype)initWithState:(NSString *)state{
    self = [super init];
    if (self) {
        _stateMenento = state;
    }
    return self;
}

@end
