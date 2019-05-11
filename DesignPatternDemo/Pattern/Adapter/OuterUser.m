//
//  OuterUser.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/11.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "OuterUser.h"

@implementation OuterUser

- (NSDictionary *)getUserBaseInfo{
    NSMutableDictionary * baesInfoMap = [NSMutableDictionary new];
    [baesInfoMap setObject:@"这个员工叫混世魔王" forKey:@"userName"];
    [baesInfoMap setObject:@"这个员工电话是" forKey:@"mobileNumer"];
    return baesInfoMap;
}

- (NSDictionary *)getUserHomeInfo{
    NSMutableDictionary * homeInfoMap = [NSMutableDictionary new];
    [homeInfoMap setObject:@"员工的家庭电话是" forKey:@"homeTelNumber"];
    [homeInfoMap setObject:@"员工的家庭地址是" forKey:@"homeAddress"];
    return homeInfoMap;
}

- (NSDictionary *)getUserOfficeInfo{
    NSMutableDictionary * officeInfoMap = [NSMutableDictionary new];
    [officeInfoMap setObject:@"这个人的职位是BOSS" forKey:@"jobPosition"];
    [officeInfoMap setObject:@"员工的办公室电话是" forKey:@"officeTelNumber"];
    return officeInfoMap;
}

@end
