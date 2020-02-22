//
//  FouthGradeSchoolReport.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/11.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "FouthGradeSchoolReport.h"

@implementation FouthGradeSchoolReport

- (void)report{
    NSLog(@"尊敬的XXX家长:");
    NSLog(@"语文62数学65体育98自然63");
    NSLog(@"家长签名:");
}

- (void)sign:(NSString *)name{
    NSLog(@"家长签名为:%@",name);
}

@end
