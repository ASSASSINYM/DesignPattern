//
//  CMApnsAlertView.h
//  CMMessageCenterUI
//
//  Created by ruantong on 2018/8/2.
//

#import <UIKit/UIKit.h>
#import "AlertViewHandler.h"
#import "AlertViewRequestProtocol.h"

@interface CMApnsAlertView : AlertViewHandler<AlertViewRequestProtocol>
- (void)show;
- (void)close;
@end
