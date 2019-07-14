//
//  Handler.h
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/11.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AlertViewHandlerProtocol.h"
#import "AlertViewRequestProtocol.h"
NS_ASSUME_NONNULL_BEGIN

@interface AlertViewHandler : UIControl<AlertViewHandlerProtocol,AlertViewRequestProtocol>
- (void)setNext:(AlertViewHandler *)handler;
@end



NS_ASSUME_NONNULL_END
