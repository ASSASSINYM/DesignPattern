//
//  IUserInfo.h
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/11.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol IUserInfo <NSObject>

@required
- (NSString *)getUserName;
- (NSString *)getHomeAddress;
- (NSString *)getMobileNumber;
- (NSString *)getOfficeTelNumber;
- (NSString *)getJobPosition;
- (NSString *)getHomeTelNumber;

@optional

@end

