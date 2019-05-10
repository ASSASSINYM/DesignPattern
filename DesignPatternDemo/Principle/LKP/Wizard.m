//
//  Wizard.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/9.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "Wizard.h"

@interface Wizard ()

@end

@implementation Wizard

- (NSInteger)first{
    NSLog(@"执行第一个方法");
    return arc4random() % 100;
}

- (NSInteger)second{
    NSLog(@"执行第二个方法");
    return arc4random() % 100;
}

- (NSInteger)third{
    NSLog(@"执行第三个方法");
    return arc4random() % 100;
}

- (void)installWizard{
    NSInteger first = [self first];
    if (first>50) {
        NSInteger second = [self second];
        if (second>50) {
            NSInteger third = [self third];
            if (third>50) {
                [self first];
            }
        }
    }
}

@end
