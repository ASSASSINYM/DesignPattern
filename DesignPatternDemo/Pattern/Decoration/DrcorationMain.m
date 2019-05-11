//
//  DrcorationMain.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/11.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "DrcorationMain.h"
#import "FouthGradeSchoolReport.h"
#import "HighScoreDecorator.h"
#import "SortDecorator.h"

@implementation DrcorationMain

- (void)main{
    SchoolReport * sr = [FouthGradeSchoolReport new];
    sr = [[HighScoreDecorator alloc] initWithSr:sr];
    sr= [[SortDecorator alloc] initWithSr:sr];
    [sr report];
    [sr sign:@"老三"];
}

@end
