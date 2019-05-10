//
//  InstallSoftware.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/9.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "InstallSoftware.h"

@implementation InstallSoftware

- (void)installWizard:(Wizard *)wizard{
//    NSInteger first = [wizard first];
//    if (first>50) {
//        NSInteger second = [wizard second];
//        if (second>50) {
//            NSInteger third = wizard.third;
//            if (third>50) {
//                [wizard first];
//            }
//        }
//    }
    [wizard installWizard];
}

@end
