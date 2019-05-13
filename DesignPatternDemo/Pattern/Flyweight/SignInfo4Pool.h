//
//  SignInfo4Pool.h
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/13.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SignInfo.h"
NS_ASSUME_NONNULL_BEGIN

@interface SignInfo4Pool : SignInfo
@property (nonatomic,copy) NSString * key;
- (instancetype)initWithKey:(NSString *)key;
@end

NS_ASSUME_NONNULL_END
