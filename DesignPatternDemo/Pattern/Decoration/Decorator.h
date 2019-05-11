//
//  Decorator.h
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/11.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "SchoolReport.h"

NS_ASSUME_NONNULL_BEGIN

@interface Decorator : SchoolReport
- (instancetype)initWithSr:(SchoolReport *)sr;
@end

NS_ASSUME_NONNULL_END
