//
//  Teacher.h
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/9.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GroupLeader.h"
NS_ASSUME_NONNULL_BEGIN

@interface Teacher : NSObject
- (void)commond:(GroupLeader *)groupLeader;
@end

NS_ASSUME_NONNULL_END
