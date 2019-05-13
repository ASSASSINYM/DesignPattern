//
//  Menento.h
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/11.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Menento : NSObject
@property (nonatomic,copy) NSString * stateMenento;
- (instancetype)initWithState:(NSString *)state;
@end

NS_ASSUME_NONNULL_END
