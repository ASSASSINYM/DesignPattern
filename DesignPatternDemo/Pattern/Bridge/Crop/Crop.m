//
//  Crop.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/13.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "Crop.h"
#import "Product.h"

@interface Crop ()
{
    Product * _product;
}
@end

@implementation Crop

- (instancetype)initWithProduct:(Product *)product{
    self = [super init];
    if (self) {
        _product = product;
    }
    return self;
}

- (void)makeMoney{
    [_product beProducted];
    [_product beSelled];
}

@end
