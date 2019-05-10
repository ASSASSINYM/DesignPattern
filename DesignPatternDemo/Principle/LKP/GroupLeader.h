//
//  GroupLeader.h
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/9.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Girl.h"

NS_ASSUME_NONNULL_BEGIN

@interface GroupLeader : NSObject
- (void)countGirls;
- (id)initWithListGirls:(NSMutableArray<Girl *> *)listGirls;
@end

NS_ASSUME_NONNULL_END
