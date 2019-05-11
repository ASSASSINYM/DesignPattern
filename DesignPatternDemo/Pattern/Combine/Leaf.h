//
//  Leaf.h
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/11.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ICombine.h"
NS_ASSUME_NONNULL_BEGIN

@interface Leaf : NSObject<ILeaf,ICrop>
- (instancetype)initWithName:(NSString *)name position:(NSString *)position salary:(NSInteger)salary;

@end

NS_ASSUME_NONNULL_END
