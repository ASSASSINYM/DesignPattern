//
//  Son.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/11.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "Son.h"

@implementation Son

- (instancetype)init{
    self = [super initWithLevel:sonType];
    if (self) {
        
    }
    return self;
}

- (void)respons:(id<IWomen>)women{
    NSLog(@"----母亲向儿子请示----");
    NSLog(@"%@",[women getRequest]);
    NSLog(@"儿子的答复是:同意");
}

@end
