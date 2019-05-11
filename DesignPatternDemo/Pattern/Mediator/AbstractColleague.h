//
//  AbstractColleague.h
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/10.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AbstractMediator.h"

NS_ASSUME_NONNULL_BEGIN

@interface AbstractColleague : NSObject

@property (nonatomic,strong) AbstractMediator * mediator;
- (instancetype)initWithMediator:(AbstractMediator *)mediator;

@end

NS_ASSUME_NONNULL_END
