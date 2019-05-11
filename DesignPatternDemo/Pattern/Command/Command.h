//
//  Command.h
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/11.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RequirementGroup.h"
#import "PageGroup.h"
#import "CodeGroup.h"

NS_ASSUME_NONNULL_BEGIN

@interface Command : NSObject
@property (nonatomic,strong) RequirementGroup * rg;
@property (nonatomic,strong) PageGroup * pg;
@property (nonatomic,strong) CodeGroup * cg;
@end

@interface Command (Abstract)
- (void)execute;
@end

NS_ASSUME_NONNULL_END
