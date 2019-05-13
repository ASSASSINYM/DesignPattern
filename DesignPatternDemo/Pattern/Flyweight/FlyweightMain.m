//
//  Flyweight.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/13.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "FlyweightMain.h"
#import "SignInfo.h"
#import "SignInfo4Pool.h"
#import "SignInfoFactory.h"

@implementation FlyweightMain

- (void)main{
    SignInfoFactory * signInfoFactory = [SignInfoFactory new];
    for (int i = 0; i<4; i++) {
        NSString * subject = [NSString stringWithFormat:@"科目%d",i];
        for (int j = 0; j<30; j++) {
            NSString * key = [NSString stringWithFormat:@"%@考试地点%d",subject,j];
            [signInfoFactory getSignInfo:key];
        }
        SignInfo * signInfo = [signInfoFactory getSignInfo:@"科目1考试地点1"];
    }
    
}

@end
