//
//  CommonEmployee.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/11.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "CommonEmployee.h"

@implementation CommonEmployee

- (NSString *)getOtherInfo{
    return [NSString stringWithFormat:@"工作:%@",_job];
}

- (void)accept:(id<IVisitor>)visitor{
    [visitor visitCommonEmployee:self];
}

@end
