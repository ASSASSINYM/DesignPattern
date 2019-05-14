//
//  Driver.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/8.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "Driver.h"

@implementation Driver

- (void)drive:(id<ICar>)car{
    [car run];
}

- (NSString *)driveUnitTest:(id<ICar>)car{
    return [car runUnitTest];
}

@end
