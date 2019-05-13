//
//  SignInfo4Pool.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/13.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "SignInfo4Pool.h"

@implementation SignInfo4Pool

- (instancetype)initWithKey:(NSString *)key{
    self = [super init];
    if (self) {
        _key = key;
    }
    return self;
}

@end
