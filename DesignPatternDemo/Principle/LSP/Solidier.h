//
//  Solidier.h
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/9.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AbstractGun.h"

NS_ASSUME_NONNULL_BEGIN

@interface Solidier : NSObject
- (void)setGun:(AbstractGun *)gun;
- (void)killEnemy;
@end

NS_ASSUME_NONNULL_END
