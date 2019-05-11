//
//  GamePlayer.h
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/10.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IGamePlayer.h"
NS_ASSUME_NONNULL_BEGIN

@interface GamePlayer : NSObject<IGamePlayer>
- (instancetype)initWithName:(NSString *)name;
@end

NS_ASSUME_NONNULL_END
