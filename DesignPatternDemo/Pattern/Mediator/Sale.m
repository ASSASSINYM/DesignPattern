//
//  Sale.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/10.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "Sale.h"

@implementation Sale

- (instancetype)initWithMediator:(AbstractMediator *)mediator{
    self = [super initWithMediator:mediator];
    if (self) {

    }
    return self;
}

- (void)sellIBMComputer:(NSInteger)number{
    [super.mediator execute:@"sale.sell" objects:@[@(number)]];
    NSLog(@"销售IBM电脑%ld台",number);
}

- (NSInteger)getSaleStatus{
    NSInteger saleStatus = arc4random()%100;
    NSLog(@"IBM 电脑的销售情况为:%ld",saleStatus);
    return saleStatus;
}

- (void)offSale{
    [super.mediator execute:@"sale.offsell" objects:nil];
}
@end
