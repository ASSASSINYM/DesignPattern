//
//  AddRequirementCommand.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/11.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "AddRequirementCommand.h"

@implementation AddRequirementCommand

- (void)execute{
    [[super rg] find];
    [[super rg] add];
    [[super rg] plan];
}

@end
