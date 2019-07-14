//
//  AlertViewRequest.m
//  DesignPatternDemo
//
//  Created by wupeng on 2019/7/14.
//  Copyright © 2019年 wupeng. All rights reserved.
//

#import "AlertViewRequest.h"

@interface AlertViewRequest()
@property (nonatomic,assign) AlertViewType type;
@end

@implementation AlertViewRequest

- (id)initWithType:(AlertViewType)type{
    self = [super init];
    if (self) {
        _type = type;
    }
    return self;
}

- (AlertViewType)getCurAlertViewType{
    return _type;
}

@end
