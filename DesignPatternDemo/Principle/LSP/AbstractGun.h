//
//  AbstractGun.h
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/9.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AbstractGun : NSObject

@end

@interface AbstractGun (Abstract)
- (void)shoot;
@end

NS_ASSUME_NONNULL_END
