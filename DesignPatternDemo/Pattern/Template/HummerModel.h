//
//  HummerModel.h
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/9.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface HummerModel : NSObject

@end

@interface HummerModel (Abstract)
- (void)start;
- (void)stop;
- (void)alarm;
- (void)engineBoom;
/*
 两个实现类的run（）方法都是完全相同的，那这个run（）方法的实现应该出现在抽象类，不应该在实现类上，抽象是所有子类的共性封装。
 */
- (void)run;
- (BOOL)isAlarm;
- (void)setAlarm:(BOOL)isAlarm;
@end

NS_ASSUME_NONNULL_END
