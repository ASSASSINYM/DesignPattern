//
//  FemaleFactory.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/9.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "FemaleFactory.h"
#import "FemaleYellowHuman.h"
#import "FemaleWhiteHuman.h"
#import "FemaleBlackHuman.h"

@implementation FemaleFactory

- (id<Human>)createBlackHuman{
    return [FemaleBlackHuman new];
}

- (id<Human>)createWhiteHuman{
    return [FemaleWhiteHuman new];
}

- (id<Human>)createYellowHuman{
    return [FemaleYellowHuman new];
}

@end
