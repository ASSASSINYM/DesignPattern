//
//  AdvTemplate.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/10.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "AdvTemplate.h"

@interface AdvTemplate ()
{
    NSString * _advSubject;
    NSString * _advContext;
}
@end

@implementation AdvTemplate

- (instancetype)init{
    self = [super init];
    if (self) {
        _advSubject = @"XX银行国庆信用卡抽奖活动";
        _advContext = @"国庆抽奖活动通知:只要刷卡就送你一百万";
    }
    return self;
}

- (NSString *)getAdvSubject{
    return _advSubject;
}

- (NSString *)getAdvContext{
    return _advContext;
}

@end
