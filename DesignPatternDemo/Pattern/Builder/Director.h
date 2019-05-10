//
//  Director.h
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/10.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BMWModel.h"
#import "BenzModel.h"
NS_ASSUME_NONNULL_BEGIN

@interface Director : NSObject
- (BMWModel *)getDBenzModel;
- (BMWModel *)getCBenzModel;
- (BenzModel *)getBBenzModel;
- (BenzModel *)getABenzModel;
@end

NS_ASSUME_NONNULL_END
