//
//  AbstractHumanFactory.h
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/9.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Human.h"
NS_ASSUME_NONNULL_BEGIN

typedef NS_OPTIONS(NSUInteger, HumanType) {
    BlackHumanType,
    YellowHumanType,
    WhiteHumanType
};

@interface AbstractHumanFactory : NSObject

@end

@interface AbstractHumanFactory (Abstract)
- (id<Human>)crateHuman:(HumanType)type;
@end

NS_ASSUME_NONNULL_END
