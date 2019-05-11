//
//  Husband.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/11.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "Husband.h"

@implementation Husband

- (instancetype)init{
    self = [super initWithLevel:husbandType];
    if (self) {
        
    }
    return self;
}

- (void)respons:(id<IWomen>)women{
    NSLog(@"-----妻子向丈夫请示-----");
    NSLog(@"%@",[women getRequest]);
    NSLog(@"丈夫的答复是:同意");
}

@end
