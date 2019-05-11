//
//  IGamePlayer.h
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/10.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol IGamePlayer <NSObject>

@required
- (void)login:(NSString *)user password:(NSString *)password;
- (void)killBoss;
- (void)upgrade;
@end
