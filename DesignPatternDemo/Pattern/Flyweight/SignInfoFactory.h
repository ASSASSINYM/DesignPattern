//
//  SignInfoFactory.h
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/13.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import <Foundation/Foundation.h>
@class SignInfo;
NS_ASSUME_NONNULL_BEGIN

@interface SignInfoFactory : NSObject
- (SignInfo *)getSignInfo:(NSString *)key;
@end

NS_ASSUME_NONNULL_END
