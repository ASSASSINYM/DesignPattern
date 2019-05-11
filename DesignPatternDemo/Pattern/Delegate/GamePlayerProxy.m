//
//  GamePlayerProxy.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/10.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "GamePlayerProxy.h"
#import "GamePlayer.h"

@interface GamePlayerProxy ()
@property (nonatomic,weak) id<IGamePlayer> gamePlayer;
@end

@implementation GamePlayerProxy

- (instancetype)initWithGamePlayer:(id<IGamePlayer>)gamePlayer{
    self = [super init];
    if (self) {
        _gamePlayer = gamePlayer;
    }
    return self;
}

- (void)killBoss{
    [self.gamePlayer killBoss];
}

- (void)login:(NSString *)user password:(NSString *)password{
    [self.gamePlayer login:user password:password];
}

- (void)upgrade{
    [self.gamePlayer upgrade];
}

@end
