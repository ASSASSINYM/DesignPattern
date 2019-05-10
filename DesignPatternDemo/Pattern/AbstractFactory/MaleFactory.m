//
//  MaleFactory.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/9.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "MaleFactory.h"
#import "MaleBlackHuman.h"
#import "MaleWhiteHuman.h"
#import "MaleYellowHuman.h"

@implementation MaleFactory
- (id<Human>)createBlackHuman{
    return [MaleBlackHuman new];
}

- (id<Human>)createWhiteHuman{
    return [MaleWhiteHuman new];
}

- (id<Human>)createYellowHuman{
    return [MaleYellowHuman new];
}
@end
