//
//  Solidier.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/9.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "Solidier.h"
#import "AbstractGun.h"
@interface Solidier ()
{
    AbstractGun * _gun;
}
@end

@implementation Solidier

- (void)setGun:(AbstractGun *)gun{
    _gun = gun;
}

- (void)killEnemy{
    NSLog(@"士兵开始杀敌人......");
    [_gun shoot];
}

@end
