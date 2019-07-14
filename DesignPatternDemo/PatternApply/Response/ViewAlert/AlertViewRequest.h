//
//  AlertViewRequest.h
//  DesignPatternDemo
//
//  Created by wupeng on 2019/7/14.
//  Copyright © 2019年 wupeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AlertViewHandlerProtocol.h"

@interface AlertViewRequest : NSObject<AlertViewRequestProtocol>
- (id)initWithType:(AlertViewType)type;
@end
