//
//  Handler.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/11.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "Handler.h"

@interface Handler()
{
    LevelType _levelType;
    Handler * _nextHandler;
}
@end

@implementation Handler

- (instancetype)initWithLevel:(LevelType)leveltype{
    self = [super init];
    if (self) {
        _levelType = leveltype;
    }
    return self;
}

- (void)handleMessage:(id<IWomen>)women{
    if (women.getType == _levelType) {
        [self respons:women];
    }else{
        if (_nextHandler) {
            [_nextHandler handleMessage:women];
        }else{
            NSLog(@"后续没有了，不用处理");
        }
    }
}

- (void)setNext:(Handler *)handler{
    _nextHandler = handler;
}

@end
