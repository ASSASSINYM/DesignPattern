//
//  Women.h
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/11.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IWomen.h"
NS_ASSUME_NONNULL_BEGIN

@interface Women : NSObject<IWomen>
- (instancetype)initWithType:(LevelType)type request:(NSString *)request;
@end

NS_ASSUME_NONNULL_END
