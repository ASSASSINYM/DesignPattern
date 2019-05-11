//
//  SortDecorator.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/11.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "SortDecorator.h"

@implementation SortDecorator

- (instancetype)initWithSr:(SchoolReport *)sr{
    self = [super initWithSr:sr];
    if (self) {
        
    }
    return self;
}

- (void)reportSort{
    NSLog(@"我的排名第38名");
}

- (void)report{
    [super report];
    [self reportSort];
}

@end
