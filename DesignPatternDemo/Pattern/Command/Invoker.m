//
//  Invoker.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/11.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "Invoker.h"
#import "Command.h"

@interface Invoker ()
{
    Command * _command;
}
@end

@implementation Invoker

- (void)setCommand:(Command *)command{
    _command = command;
}

- (void)action{
    [_command execute];
}

@end
