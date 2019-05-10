//
//  TemplateMain.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/9.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "TemplateMain.h"
#import "HummerH1Model.h"
#import "HummerH2Model.h"
@implementation TemplateMain
- (void)main{
    HummerModel * h1 = [HummerH1Model new];
    [h1 setAlarm:YES];
    [h1 run];
    
    HummerModel * h2 = [HummerH2Model new];
    [h2 run];
}
@end
