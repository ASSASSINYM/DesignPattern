//
//  OuterUserInfo.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/11.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "OuterUserInfo.h"

@interface OuterUserInfo ()
{
    NSDictionary * _baseInfo;
    NSDictionary * _homeInfo;
    NSDictionary * _officeInfo;
}
@end

@implementation OuterUserInfo

- (instancetype)init{
    self = [super init];
    if (self) {
        _baseInfo = [super getUserBaseInfo];
        _homeInfo = [super getUserHomeInfo];
        _officeInfo = [super getUserOfficeInfo];
    }
    return self;
}

- (NSString *)getHomeAddress{
    NSString * homeAddress = _homeInfo[@"homeAddress"];
    NSLog(@"%@",homeAddress);
    return homeAddress;
}

- (NSString *)getHomeTelNumber{
    NSString * homeTelNumber = _homeInfo[@"homeTelNumber"];
    NSLog(@"%@",homeTelNumber);
    return homeTelNumber;
}

- (NSString *)getJobPosition{
    NSString * jobPosition = _officeInfo[@"jobPosition"];
    NSLog(@"%@",jobPosition);
    return jobPosition;
}

- (NSString *)getMobileNumber{
    NSString * mobileNumer = _baseInfo[@"mobileNumer"];
    NSLog(@"%@",mobileNumer);
    return mobileNumer;
}

- (NSString *)getOfficeTelNumber{
    NSString * officeTelNumber = _officeInfo[@"officeTelNumber"];
    NSLog(@"%@",officeTelNumber);
    return officeTelNumber;
}

- (NSString *)getUserName{
    NSString * userName = _baseInfo[@"userName"];
    NSLog(@"%@",userName);
    return userName;
}

@end
