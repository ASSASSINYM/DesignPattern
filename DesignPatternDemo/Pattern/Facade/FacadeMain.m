//
//  FacadeMain.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/11.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "FacadeMain.h"
#import "ModenPostOffice.h"

@implementation FacadeMain

- (void)main{
    NSString * context = @"Hello,It's me";
    NSString * address = @"Happy Road No.666";
    ModenPostOffice * modenPostOffice = [ModenPostOffice new];
    [modenPostOffice sendLetter:context address:address];
}

@end
