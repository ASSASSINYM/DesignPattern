//
//  HighScoreDecorator.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/11.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "HighScoreDecorator.h"

@implementation HighScoreDecorator

- (instancetype)initWithSr:(SchoolReport *)sr{
    self = [super initWithSr:sr];
    if (self) {
        
    }
    return self;
}

- (void)reportHighScore{
    NSLog(@"这次考试语文最高是75，数学78，自然是80");
}

- (void)report{
    [self reportHighScore];
    [super report];
}

@end
