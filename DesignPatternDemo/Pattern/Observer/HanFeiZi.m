//
//  HanFeiZi.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/11.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "HanFeiZi.h"
#import "Lisi.h"

@interface HanFeiZi ()
{
    NSMutableArray<id<Observer>> * _observerList;
}
@end

@implementation HanFeiZi

- (instancetype)init{
    self = [super init];
    if (self) {
        _observerList = [NSMutableArray new];
    }
    return self;
}

- (void)addObserver:(id<Observer>)server{
    [_observerList addObject:server];
}

- (void)deleteObserver:(id<Observer>)server{
    [_observerList removeObject:server];
}

- (void)notifyObservers:(NSString *)context{
    for (id<Observer> observer in _observerList) {
        [observer update:context];
    }
}

- (void)haveBreakfast{
    NSLog(@"韩非子:开始吃饭了");
    [self notifyObservers:@"韩非子在吃饭"];
}

- (void)haveFun{
    NSLog(@"韩非子:开始娱乐了");
    [self notifyObservers:@"韩非子在娱乐"];
}

@end
