//
//  AddExpression.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/13.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "AddExpression.h"

@implementation AddExpression
- (instancetype)initWithLeft:(Expression *)left right:(Expression *)right{
    self = [super initWithLeft:left right:right];
    if (self) {
        
    }
    return self;
}

- (NSInteger)interpreter:(NSMutableDictionary<NSString *,NSNumber *> *)var{
    return [[super left] interpreter:var]+[[super left] interpreter:var];
}

@end
