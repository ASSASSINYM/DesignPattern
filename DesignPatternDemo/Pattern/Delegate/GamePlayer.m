//
//  GamePlayer.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/10.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "GamePlayer.h"

@interface GamePlayer ()
{
    NSString * _name;
}
@end

@implementation GamePlayer

- (instancetype)initWithName:(NSString *)name{
    self = [super init];
    if (self) {
        _name = name;
    }
    return self;
}

- (void)killBoss{
    NSLog(@"%@在打怪",_name);
}

- (void)login:(NSString *)user password:(NSString *)password{
    NSLog(@"登录名为%@的用户%@登录成功",user,_name);
}

- (void)upgrade{
    NSLog(@"%@又升了一级！",_name);
}

@end
