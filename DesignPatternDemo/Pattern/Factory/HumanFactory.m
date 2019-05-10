//
//  HumanFactory.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/9.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "HumanFactory.h"
#import "BlackHuman.h"
#import "YellowHuman.h"
#import "WhiteHuman.h"

@implementation HumanFactory
- (id<Human>)crateHuman:(HumanType)type{
    id<Human> human;
    if (type == BlackHumanType) {
        human = [BlackHuman new];
    }else if (type == YellowHumanType){
        human = [YellowHuman new];
    }else if (type == WhiteHumanType){
        human = [WhiteHuman new];
    }
    return human;
}

+ (id<Human>)crateHuman:(HumanType)type{
    id<Human> human;
    if (type == BlackHumanType) {
        human = [BlackHuman new];
    }else if (type == YellowHumanType){
        human = [YellowHuman new];
    }else if (type == WhiteHumanType){
        human = [WhiteHuman new];
    }
    return human;
}
@end
