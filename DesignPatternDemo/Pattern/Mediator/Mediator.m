//
//  Mediator.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/10.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "Mediator.h"
#import "Purchase.h"
#import "Sale.h"
#import "Stock.h"

@interface Mediator ()
@property (nonatomic,strong) Purchase * purchase;
@property (nonatomic,strong) Sale * sale;
@property (nonatomic,strong) Stock * stock;
@end

@implementation Mediator

- (instancetype)init{
    self = [super init];
    if (self) {
        _purchase = [Purchase new];
        _sale = [Sale new];
        _stock = [Stock new];
    }
    return self;
}
//相当于模块调用中间
- (void)execute:(NSString *)str objects:(NSArray<NSNumber *> *)objects{
    if ([str isEqualToString:@"purchase.buy"]) {
        [self buyIBMcomputer:[objects[0] integerValue]];
    }else if ([str isEqualToString:@"sale.sell"]){
        [self sellIBMComputer:[objects[0] integerValue]];
    }else if ([str isEqualToString:@"sale.offsell"]){
        [self offSale];
    }else if ([str isEqualToString:@"stock.clear"]){
        [self clearStock];
    }
}

- (void)buyIBMcomputer:(NSInteger)number{
    NSInteger saleStatus = [self.sale getSaleStatus];
    
    if (saleStatus>80) {
        NSLog(@"采购IBM电脑:%ld台",number);
        [self.stock increase:number];
    }else{
        NSInteger buyNumber = number/2;
        NSLog(@"采购IBM电脑:%ld台",buyNumber);
    }
}

- (void)sellIBMComputer:(NSInteger)number{
    if ([self.stock getStockNumber]<number) {
        [self.purchase buyIBMcomputer:number];
    }
    NSLog(@"销售IBM电脑%ld台",number);
    [self.stock decrease:number];
}

- (void)offSale{
    NSLog(@"折价销售IBM电脑%ld台",[self.stock getStockNumber]);
}

- (void)clearStock{
    [self.sale offSale];
    [self.purchase refuseBuyIBM];
}

- (void)main{
    [self.purchase buyIBMcomputer:100];
    [self.sale sellIBMComputer:1];
    [self.stock clearStock];
}

@end
