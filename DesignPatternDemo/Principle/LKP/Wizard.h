//
//  Wizard.h
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/9.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
/*
 迪米特法则要求类“羞涩”一点，尽量不要对外公布太多的public方法和非静态的public变量，尽量内敛
 */
@interface Wizard : NSObject
//- (NSInteger)first;
//- (NSInteger)second;
//- (NSInteger)third;
- (void)installWizard;
@end

NS_ASSUME_NONNULL_END
