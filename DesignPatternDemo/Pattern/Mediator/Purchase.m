//
//  Purchase.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/10.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "Purchase.h"


@implementation Purchase

- (instancetype)initWithMediator:(AbstractMediator *)mediator{
    self = [super initWithMediator:mediator];
    if (self) {
        
    }
    return self;
}

- (void)buyIBMcomputer:(NSInteger)number{
    
    [super.mediator execute:@"purchase.buy" objects:@[@(number)]];
}

- (void)refuseBuyIBM{
    NSLog(@"不再采购IBM电脑");
}

@end
