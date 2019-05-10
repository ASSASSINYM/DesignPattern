//
//  BMWBuilder.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/9.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "BMWBuilder.h"
#import "BMWModel.h"

@interface BMWBuilder ()
@property (nonatomic,strong) BMWModel * bmw;
@end

@implementation BMWBuilder

- (void)setSequence:(NSMutableArray<NSString *> *)sequence{
    [self.bmw setSequence:sequence];
}

- (CarModel *)getCarModel{
    return self.bmw;
}

- (BMWModel *)bmw{
    if (!_bmw) {
        _bmw = [BMWModel new];
    }
    return _bmw;
}

@end
