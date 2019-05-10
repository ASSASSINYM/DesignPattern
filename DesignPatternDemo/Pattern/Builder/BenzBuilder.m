//
//  BenzBuilder.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/9.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "BenzBuilder.h"
#import "BenzModel.h"

@interface BenzBuilder ()
@property (nonatomic,strong) BenzModel * benz;
@end

@implementation BenzBuilder

- (void)setSequence:(NSMutableArray<NSString *> *)sequence{
    [self.benz setSequence:sequence];
}

- (CarModel *)getCarModel{
    return self.benz;
}

- (BenzModel *)benz{
    if (!_benz) {
        _benz = [BenzModel new];
    }
    return _benz;
}

@end
