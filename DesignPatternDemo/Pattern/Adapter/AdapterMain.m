//
//  AdapterMain.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/11.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "AdapterMain.h"
#import "IUserInfo.h"
#import "UserInfo.h"
#import "OuterUserInfo.h"

@implementation AdapterMain

- (void)main{
    id<IUserInfo> youngGirl = [UserInfo new];
    for (int i = 0; i<10; i++) {
        [youngGirl getMobileNumber];
    }
    
    id<IUserInfo> youngGirl2 = [OuterUserInfo new];
    for (int i = 0; i<10; i++) {
        [youngGirl2 getMobileNumber];
    }
}

@end
