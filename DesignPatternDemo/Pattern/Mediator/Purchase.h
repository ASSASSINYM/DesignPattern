//
//  Purchase.h
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/10.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AbstractColleague.h"

NS_ASSUME_NONNULL_BEGIN

@interface Purchase : AbstractColleague
- (void)buyIBMcomputer:(NSInteger)number;
- (void)refuseBuyIBM;
@end

NS_ASSUME_NONNULL_END
