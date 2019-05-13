//
//  HouseCrop.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/13.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "HouseCrop.h"

@implementation HouseCrop

- (instancetype)initWithProduct:(Product *)product{
    self = [super initWithProduct:product];
    if (self) {
        
    }
    return self;
}

- (void)makeMoney{
    [super makeMoney];
    NSLog(@"房地产公司赚大钱了");
}

@end
