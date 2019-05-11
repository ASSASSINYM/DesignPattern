//
//  Stock.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/10.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "Stock.h"

@interface Stock ()
{
    NSInteger COMPUTER_NUMBER;
}
@end

@implementation Stock


- (instancetype)initWithMediator:(AbstractMediator *)mediator{
    self = [super initWithMediator:mediator];
    if (self) {
        COMPUTER_NUMBER = 100;
    }
    return self;
}

- (void)increase:(NSInteger)number{
    COMPUTER_NUMBER +=number;
    NSLog(@"库存数量为:%ld",COMPUTER_NUMBER);
}

- (void)decrease:(NSInteger)number{
    COMPUTER_NUMBER-=number;
    NSLog(@"库存数量为:%ld",COMPUTER_NUMBER);
}

- (NSInteger)getStockNumber{
    return COMPUTER_NUMBER;
}

- (void)clearStock{
    NSLog(@"清理存货数量为:%ld",COMPUTER_NUMBER);
    [super.mediator execute:@"stock.clear" objects:@[@(0)]];
}

@end
