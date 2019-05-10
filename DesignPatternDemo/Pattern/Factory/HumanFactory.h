//
//  HumanFactory.h
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/9.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "AbstractHumanFactory.h"

NS_ASSUME_NONNULL_BEGIN

@interface HumanFactory : AbstractHumanFactory
+ (id<Human>)crateHuman:(HumanType)type;//简单工厂模式
@end

NS_ASSUME_NONNULL_END
