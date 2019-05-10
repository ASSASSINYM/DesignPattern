//
//  HumanFactory.h
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/9.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Human.h"
@protocol HumanFactory2 <NSObject>

@required
- (id<Human>)createYellowHuman;
- (id<Human>)createWhiteHuman;
- (id<Human>)createBlackHuman;

@end
