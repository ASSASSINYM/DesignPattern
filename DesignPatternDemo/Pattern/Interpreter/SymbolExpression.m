//
//  SymbolExpression.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/13.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "SymbolExpression.h"

@implementation SymbolExpression

- (instancetype)initWithLeft:(Expression *)left right:(Expression *)right{
    self = [super init];
    if (self) {
        _left = left;
        _right = right;
    }
    return self;
}

@end
