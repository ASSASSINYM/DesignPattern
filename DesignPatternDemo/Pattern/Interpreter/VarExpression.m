//
//  VarExpression.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/13.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "VarExpression.h"

@interface VarExpression ()
{
    NSString * _key;
}
@end

@implementation VarExpression

- (instancetype)initWithKey:(NSString *)key{
    self = [super init];
    if (self) {
        _key = key;
    }
    return self;
}

- (NSInteger)interpreter:(NSMutableDictionary<NSString *,NSNumber *> *)var{
    return [var[_key] integerValue];
}

@end
