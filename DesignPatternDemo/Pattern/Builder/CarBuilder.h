//
//  CarBuilder.h
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/9.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CarModel.h"
NS_ASSUME_NONNULL_BEGIN

@interface CarBuilder : NSObject

@end

@interface CarBuilder (Abstract)
- (void)setSequence:(NSMutableArray<NSString *> *)sequence;
- (CarModel *)getCarModel;
@end

NS_ASSUME_NONNULL_END
