//
//  NvWaMain2.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/9.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "NvWaMain2.h"
#import "MaleFactory.h"
#import "FemaleFactory.h"

@implementation NvWaMain2
- (void)main{
    id<HumanFactory2> maleHumanFactory = [MaleFactory new];
    id<HumanFactory2> femaleHumanFactory = [FemaleFactory new];
    
    id<Human> maleYellowHuman = [maleHumanFactory createYellowHuman];
    id<Human> femaleYellowHuman = [femaleHumanFactory createYellowHuman];
    id<Human> maleWhiteHuman = [maleHumanFactory createWhiteHuman];
    id<Human> femaleWhiteHuman = [femaleHumanFactory createWhiteHuman];
    id<Human> maleBlackHuman = [maleHumanFactory createBlackHuman];
    id<Human> femaleBlackHuman = [femaleHumanFactory createBlackHuman];
    
    [femaleYellowHuman getColor];
}
@end
