//
//  SugarFouthGradeSchoolReport.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/11.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "SugarFouthGradeSchoolReport.h"

@implementation SugarFouthGradeSchoolReport

- (void)reportHighScore{
    NSLog(@"这次考试语文最高是75，数学78，自然是80");
}

- (void)reportSort{
    NSLog(@"我的排名第38名");
}

- (void)report{
    [self reportHighScore];
    [super report];
    [self reportSort];
}

@end
