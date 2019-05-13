//
//  Visitor.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/11.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "Visitor.h"
#import "Manager.h"
#import "CommonEmployee.h"

@implementation Visitor

- (void)visitCommonEmployee:(CommonEmployee *)commonEmployee{
    NSLog(@"%@",[self getCommonEmployeeInfo:commonEmployee]);
}

- (void)visitManager:(Manager *)manager{
    NSLog(@"%@",[self getManagerInfo:manager]);
}

- (NSString *)getBasicInfo:(Employee *)employee{
    NSString * info = [NSString stringWithFormat: @"姓名:%@",employee.name];
    info = [NSString stringWithFormat:@"%@ 性别:%@",info,employee.sex == 1?@"女":@"男"];
    info = [NSString stringWithFormat:@"%@ 薪水:%ld",info,employee.salary];
    return info;
}

- (NSString *)getManagerInfo:(Manager *)manager{
    NSString * info = [self getBasicInfo:manager];
    info = [NSString stringWithFormat:@"%@ 业绩:%@",info,manager.getOtherInfo];
    return info;
}

- (NSString *)getCommonEmployeeInfo:(CommonEmployee *)commonEmployee{
    NSString * info = [self getBasicInfo:commonEmployee];
    info = [NSString stringWithFormat:@"%@ 工作:%@",info,commonEmployee.job];
    return info;
}

@end
