//
//  Istrategy.h
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/11.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol IStrategy <NSObject>

@required
- (void)operate;

@optional

@end

