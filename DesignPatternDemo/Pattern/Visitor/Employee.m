//
//  Employee.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/11.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "Employee.h"

@implementation Employee

- (void)report{
    NSString * info = [NSString stringWithFormat: @"姓名:%@",_name];
    info = [NSString stringWithFormat:@"%@ 性别:%@",info,_sex == 1?@"女":@"男"];
    info = [NSString stringWithFormat:@"%@ 薪水:%ld",info,_salary];
    info = [NSString stringWithFormat:@"%@ %@",info,[self getOtherInfo]];
    NSLog(@"%@",info);
}

@end
