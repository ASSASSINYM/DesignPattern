//
//  Command.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/11.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "Command.h"

@implementation Command

- (instancetype)init{
    self = [super init];
    if (self) {
        _pg = [PageGroup new];
        _cg = [CodeGroup new];
        _rg = [RequirementGroup new];
    }
    return self;
}

@end
