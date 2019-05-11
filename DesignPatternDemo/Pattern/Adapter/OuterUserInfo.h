//
//  OuterUserInfo.h
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/11.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "OuterUser.h"
#import "IUserInfo.h"

NS_ASSUME_NONNULL_BEGIN

@interface OuterUserInfo : OuterUser<IUserInfo>

@end

NS_ASSUME_NONNULL_END
