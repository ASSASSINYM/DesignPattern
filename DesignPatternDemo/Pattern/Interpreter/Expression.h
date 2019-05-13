//
//  Expression.h
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/13.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Expression : NSObject
@end

@interface Expression (Abstract)

- (NSInteger)interpreter:(NSMutableDictionary<NSString *,NSNumber *> *)var;

@end

NS_ASSUME_NONNULL_END
