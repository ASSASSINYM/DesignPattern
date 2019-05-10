//
//  CarModel.h
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/9.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CarModel : NSObject
- (void)setSequence:(NSMutableArray<NSString *> *)sequence;
@end

@interface CarModel (Abstract)
- (void)start;
- (void)stop;
- (void)alarm;
- (void)engineBoom;
- (void)run;
@end

NS_ASSUME_NONNULL_END
