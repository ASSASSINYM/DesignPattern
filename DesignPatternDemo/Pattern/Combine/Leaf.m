//
//  Leaf.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/11.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "Leaf.h"

@interface Leaf ()
{
    NSMutableArray * _subordinateList;
    NSString * _name;
    NSString * _position;
    NSInteger _salary;
}
@end

@implementation Leaf
- (instancetype)initWithName:(NSString *)name position:(NSString *)position salary:(NSInteger)salary{
    self = [super init];
    if (self) {
        _subordinateList = [NSMutableArray new];
        _name = name;
        _position = position;
        _salary = salary;
    }
    return self;
}

- (NSString *)getInfo{
    NSString * info = @"";
    info = [NSString stringWithFormat:@"名称:%@",_name];
    info = [NSString stringWithFormat:@"%@ 职位:%@",info,_position];
    info = [NSString stringWithFormat:@"%@ 薪水:%ld",info,_salary];
    return info;
}

@end
