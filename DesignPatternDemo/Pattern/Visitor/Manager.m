//
//  Manager.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/11.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "Manager.h"

@implementation Manager

- (NSString *)getOtherInfo{
    return [NSString stringWithFormat:@"业绩:%@",_performance];
}

- (void)accept:(id<IVisitor>)visitor{
    [visitor visitManager:self];
}

@end
