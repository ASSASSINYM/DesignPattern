//
//  HanFeiZi.h
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/11.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IObservable.h"
#import "IHanFeiZi.h"
NS_ASSUME_NONNULL_BEGIN

@interface HanFeiZi : NSObject<IHanFeiZi,Observable>

@end

NS_ASSUME_NONNULL_END
