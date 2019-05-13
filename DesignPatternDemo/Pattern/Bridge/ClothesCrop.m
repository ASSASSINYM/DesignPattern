//
//  ClothesCrop.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/13.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "ClothesCrop.h"

@implementation ClothesCrop

- (instancetype)initWithProduct:(Product *)product{
    self = [super initWithProduct:product];
    if (self) {
        
    }
    return self;
}

- (void)makeMoney{
    [super makeMoney];
    NSLog(@"服装公司赚小钱了");
}

@end
