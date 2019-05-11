//
//  Observer.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/11.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "ObserverMain.h"
#import "HanFeiZi.h"
#import "Lisi.h"
#import "WangSi.h"
#import "LiuSi.h"

@implementation ObserverMain

- (void)main{
    id<Observer> liSi = [Lisi new];
    id<Observer> wangSi = [WangSi new];
    id<Observer> liuSi = [LiuSi new];
    
    HanFeiZi * hanFeiZi = [HanFeiZi new];
    [hanFeiZi addObserver:liSi];
    [hanFeiZi addObserver:wangSi];
    [hanFeiZi addObserver:liuSi];
    
    [hanFeiZi haveBreakfast];
    [hanFeiZi haveFun];
}

@end
