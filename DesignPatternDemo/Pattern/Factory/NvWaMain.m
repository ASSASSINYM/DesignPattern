//
//  NvWaMain.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/9.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "NvWaMain.h"
#import "HumanFactory.h"

@implementation NvWaMain

- (void)main{
    AbstractHumanFactory * yinYangLu = [HumanFactory new];
    
    id<Human> whiteHuman = [yinYangLu crateHuman:WhiteHumanType];
    [whiteHuman getColor];
    [whiteHuman talk];
    
    id<Human> blackHuman = [yinYangLu crateHuman:BlackHumanType];
    [blackHuman getColor];
    [blackHuman talk];
    
    id<Human> yellowHuman = [yinYangLu crateHuman:YellowHumanType];
    [yellowHuman getColor];
    [yellowHuman talk];
}

@end
