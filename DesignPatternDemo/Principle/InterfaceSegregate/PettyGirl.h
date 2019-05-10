//
//  PettyGirl.h
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/9.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IPettyGirl.h"
NS_ASSUME_NONNULL_BEGIN

@interface PettyGirl : NSObject<IPettyGirl>
- (id)initWithName:(NSString *)name;
@end

NS_ASSUME_NONNULL_END
