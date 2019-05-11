//
//  StrategyMain.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/11.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "StrategyMain.h"
#import "Context.h"
#import "BackDoor.h"
#import "GivenGreenLight.h"
#import "BlockEnemy.h"

@implementation StrategyMain

- (void)main{
    Context * context;
    
    context = [[Context alloc] initWithStrategy:[BackDoor new]];
    [context operate];
    
    context = [[Context alloc] initWithStrategy:[GivenGreenLight new]];
    [context operate];
    
    context = [[Context alloc] initWithStrategy:[BlockEnemy new]];
    [context operate];
    
    
}

@end
