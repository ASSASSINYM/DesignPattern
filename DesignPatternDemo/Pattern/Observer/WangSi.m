//
//  WangSi.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/11.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "WangSi.h"

@implementation WangSi

- (void)update:(NSString *)context{
    NSLog(@"王斯:观察到韩非子活动,自己也开始活动了...");
    [self cry:context];
    NSLog(@"王斯:哭死了");
}

- (void)cry:(NSString *)context{
    NSLog(@"王斯:因为%@,所以我悲伤啊!",context);
}

@end
