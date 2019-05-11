//
//  DelegateMain.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/10.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "DelegateMain.h"
#import "GamePlayer.h"
#import "GamePlayerProxy.h"
@implementation DelegateMain

- (void)main{
    id<IGamePlayer> player = [[GamePlayer alloc] initWithName:@"张三"];
    
    id<IGamePlayer> proxy = [[GamePlayerProxy alloc] initWithGamePlayer:player];
    [proxy login:@"zhangsan" password:@"password"];
    [proxy killBoss];
    [proxy upgrade];
}

@end
