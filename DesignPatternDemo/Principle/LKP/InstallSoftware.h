//
//  InstallSoftware.h
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/9.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Wizard.h"
NS_ASSUME_NONNULL_BEGIN

@interface InstallSoftware : NSObject
- (void)installWizard:(Wizard *)wizard;
@end

NS_ASSUME_NONNULL_END
