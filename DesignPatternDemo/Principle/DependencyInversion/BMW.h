//
//  BMW.h
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/8.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ICar.h"
NS_ASSUME_NONNULL_BEGIN

@interface BMW : NSObject<ICar>
- (void)run;
@end

NS_ASSUME_NONNULL_END
