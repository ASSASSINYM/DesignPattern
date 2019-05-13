//
//  Boy.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/11.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "Boy.h"

@interface Boy()

@end

@implementation Boy

- (void)changeState{
    _state = @"心情可能很不好";
}

- (NSString *)getState{
    return _state;
}

- (Menento *)createMemento{
    return [[Menento alloc] initWithState:_state];
}

- (void)restoreMemento:(Menento *)memento{
    _state = memento.stateMenento;
}

@end
