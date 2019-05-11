//
//  MediatorMain.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/10.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "MediatorMain.h"
#import "Mediator.h"
#import "Purchase.h"
#import "Sale.h"
#import "Stock.h"

@implementation MediatorMain
- (void)main{
    AbstractMediator * mediator = [Mediator new];
    Stock * stock = [[Stock alloc] initWithMediator:mediator];//库存第一个初始化
    Purchase * purchase = [[Purchase alloc] initWithMediator:mediator];
    Sale * sale = [[Sale alloc] initWithMediator:mediator];

    [purchase buyIBMcomputer:100];
    [sale sellIBMComputer:1];
    [stock clearStock];
}
@end
