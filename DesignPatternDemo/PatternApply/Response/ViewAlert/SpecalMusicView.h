//
//  SpecalMusicView.h
//  HWTou
//
//  Created by robinson on 2018/3/21.
//  Copyright © 2018年 LieMi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AlertViewRequestProtocol.h"
#import "AlertViewHandler.h"
@interface SpecalMusicView : AlertViewHandler<AlertViewRequestProtocol>
- (void)show;
- (void)dismiss;
+ (SpecalMusicView *)createSpecalView;
@end
