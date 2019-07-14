//
//  Handler.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/11.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "AlertViewHandler.h"

@interface AlertViewHandler()
{
    AlertViewHandler * _nextHandler;
}
@end

@implementation AlertViewHandler

- (void)handleMessage:(id<AlertViewRequestProtocol>)alertView{
    if (alertView.getCurAlertViewType == [self getCurAlertViewType]) {
        [self respons:alertView];
    }else{
        if (_nextHandler) {
            [_nextHandler handleMessage:alertView];
        }else{
            NSLog(@"后续没有了，不用处理");
        }
    }
}

- (void)setNext:(AlertViewHandler *)handler{
    _nextHandler = handler;
}

- (void)respons:(id<AlertViewRequestProtocol>)alertView{
    NSLog(@"AlertViewHandler respons");
}

- (AlertViewType)getCurAlertViewType{
    return apnsAlertViewType;
}

@end
