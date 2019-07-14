//
//  IAlertViewHandler.h
//  DesignPatternDemo
//
//  Created by wupeng on 2019/7/14.
//  Copyright © 2019年 wupeng. All rights reserved.
//

#import "AlertViewRequestProtocol.h"

@protocol AlertViewHandlerProtocol <NSObject>

- (void)handleMessage:(id<AlertViewRequestProtocol>)women;
- (void)respons:(id<AlertViewRequestProtocol>)women;

@end


