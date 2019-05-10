//
//  HummerH1Model.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/9.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "HummerH1Model.h"

@interface HummerH1Model ()
{
    BOOL _alarmFlag;
}
@end

@implementation HummerH1Model

- (instancetype)init{
    self = [super init];
    if (self) {
        _alarmFlag = YES;
    }
    return self;
}

- (void)alarm{
    NSLog(@"悍马H1鸣笛......");
}

- (void)engineBoom{
    NSLog(@"悍马H1引擎声音时这样在......");
}

- (void)start{
    NSLog(@"悍马H1发动......");
}

- (void)stop{
    NSLog(@"悍马H1停车......");
}

- (void)run{
    [super run];
//    [self start];
//    [self engineBoom];
//    [self alarm];
//    [self stop];
}

- (BOOL)isAlarm{
    return _alarmFlag;
}

- (void)setAlarm:(BOOL)isAlarm{
    _alarmFlag = isAlarm;
}

@end
