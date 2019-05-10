//
//  HummerH2Model.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/9.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "HummerH2Model.h"

@implementation HummerH2Model
- (void)alarm{
    NSLog(@"悍马H2鸣笛......");
}

- (void)engineBoom{
    NSLog(@"悍马H2引擎声音时这样在......");
}

- (void)start{
    NSLog(@"悍马H2发动......");
}

- (void)stop{
    NSLog(@"悍马H2停车......");
}

- (BOOL)isAlarm{
    return NO;
}

- (void)run{
    [super run];
//    [self start];
//    [self engineBoom];
//    [self alarm];
//    [self stop];
}
@end
