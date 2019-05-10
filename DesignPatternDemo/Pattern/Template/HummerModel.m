//
//  HummerModel.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/9.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "HummerModel.h"

@implementation HummerModel
- (void)run{
    [self start];
    [self engineBoom];
    if ([self isAlarm]) {
        [self alarm];
    }
    [self stop];
}
//钩子方法
- (BOOL)isAlarm{
    return YES;
}
@end
