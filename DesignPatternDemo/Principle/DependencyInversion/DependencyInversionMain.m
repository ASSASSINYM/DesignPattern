//
//  DependencyInversionMain.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/9.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "DependencyInversionMain.h"
#import "Driver.h"
#import "Benz.h"
#import "BMW.h"

@interface DependencyInversionMain ()

@end

@implementation DependencyInversionMain
/*
 更加精简的定义就是“面向接口编程”——OOD（Object-Oriented Design，面向对象设计）的精髓之一。
 */
- (void)main{
    id<IDriver> zhangSan = [Driver new];
    id<ICar> benz = [Benz new];
    [zhangSan drive:benz];
    
    id<ICar> bmw = [BMW new];
    [zhangSan drive:bmw];
}

@end
