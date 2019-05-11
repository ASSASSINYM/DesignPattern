//
//  Group.h
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/11.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Group : NSObject

@end

@interface Group (Abstract)
- (void)find;
- (void)add;
- (void)delete1;
- (void)change;
- (void)plan;
@end

NS_ASSUME_NONNULL_END
