//
//  Calculator.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/13.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "Calculator.h"
#import "Expression.h"
@interface Calculator ()
{
    Expression * _expression;
}
@end

@implementation Calculator

- (instancetype)init{
    self = [super init];
    if (self) {
        
    }
    return self;
}

@end
