//
//  LiveFooterView.h
//  HWTou
//
//  Created by robinson on 2018/3/20.
//  Copyright © 2018年 LieMi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AlertViewRequestProtocol.h"
#import "AlertViewHandler.h"

@interface LiveFooterView : AlertViewHandler<AlertViewRequestProtocol>
- (void)show;
- (void)close;
+ (LiveFooterView *)createLiveFooterView;
@end
