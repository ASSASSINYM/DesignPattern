//
//  Director.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/10.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "Director.h"
#import "BMWBuilder.h"
#import "BenzBuilder.h"
#import "BenzModel.h"
#import "BMWModel.h"

@interface Director ()
@property (nonatomic,strong) NSMutableArray<NSString *> * sequence;
@property (nonatomic,strong) BMWBuilder * bmwBuilder;
@property (nonatomic,strong) BenzBuilder * benzBuilder;
@end

@implementation Director

- (BenzModel *)getABenzModel{
    [self.sequence removeAllObjects];
    [self.sequence addObject:@"strart"];
    [self.sequence addObject:@"stop"];
    
    [self.benzBuilder setSequence:self.sequence];
    return (BenzModel *)[self.benzBuilder getCarModel];
}

- (BenzModel *)getBBenzModel{
    [self.sequence removeAllObjects];
    [self.sequence addObject:@"engine boom"];
    [self.sequence addObject:@"strart"];
    [self.sequence addObject:@"stop"];
    
    [self.benzBuilder setSequence:self.sequence];
    return (BenzModel *)[self.benzBuilder getCarModel];
}

- (BMWModel *)getCBenzModel{
    [self.sequence removeAllObjects];
    [self.sequence addObject:@"alarm"];
    [self.sequence addObject:@"start"];
    [self.sequence addObject:@"stop"];
    
    [self.bmwBuilder setSequence:self.sequence];
    return (BMWModel *)[self.bmwBuilder getCarModel];
}

- (BMWModel *)getDBenzModel{
    [self.sequence removeAllObjects];
    [self.sequence addObject:@"strart"];
    
    [self.bmwBuilder setSequence:self.sequence];
    return (BMWModel *)[self.bmwBuilder getCarModel];
}

#pragma mark - getter
- (NSMutableArray<NSString *> *)sequence{
    if (!_sequence) {
        _sequence = [NSMutableArray new];
    }
    return _sequence;
}

- (BMWBuilder *)bmwBuilder{
    if (!_bmwBuilder) {
        _bmwBuilder = [BMWBuilder new];
    }
    return _bmwBuilder;
}

- (BenzBuilder *)benzBuilder{
    if (!_benzBuilder) {
        _benzBuilder = [BenzBuilder new];
    }
    return _benzBuilder;
}

@end
