//
//  Lisi.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/11.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "Lisi.h"

@implementation Lisi

- (void)update:(NSString *)context{
    NSLog(@"李斯:观察到韩非子活动，开始向老板回报了");
    [self reportToQiShiHuang:context];
    NSLog(@"李斯:汇报完毕");
}

- (void)reportToQiShiHuang:(NSString *)reportContext{
    NSLog(@"李斯:报告，秦老板！韩非子有活动了--->%@",reportContext);
}

@end
