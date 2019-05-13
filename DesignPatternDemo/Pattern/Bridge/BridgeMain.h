//
//  Bridge.h
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/13.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "Crop.h"
#import "IBase.h"

NS_ASSUME_NONNULL_BEGIN

@interface BridgeMain : Crop<IMain>

@end

NS_ASSUME_NONNULL_END
