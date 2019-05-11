//
//  IOuterUser.h
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/11.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol IOuterUser <NSObject>

@required
- (NSDictionary *)getUserBaseInfo;
- (NSDictionary *)getUserOfficeInfo;
- (NSDictionary *)getUserHomeInfo;

@optional

@end

