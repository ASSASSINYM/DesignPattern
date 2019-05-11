//
//  Invoker.h
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/11.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Command.h"
NS_ASSUME_NONNULL_BEGIN

@interface Invoker : NSObject
- (void)setCommand:(Command *)command;
- (void)action;
@end

NS_ASSUME_NONNULL_END
