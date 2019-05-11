//
//  LiuSi.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/11.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "LiuSi.h"

@implementation LiuSi

- (void)update:(NSString *)context{
    NSLog(@"刘斯:观察到韩非子活动,自己也开始活动了...");
    [self happy:context];
    NSLog(@"刘斯:乐死了");
}

- (void)happy:(NSString *)context{
    NSLog(@"王斯:因为%@,所以我快乐啊!",context);
}

@end
