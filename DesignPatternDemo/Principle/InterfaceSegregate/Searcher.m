//
//  Searcher.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/9.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "Searcher.h"
#import "IPettyGirl.h"
@implementation Searcher
- (id)initWithPettyGirl:(id<IPettyGirl>)pettyGirl{
    self = [super initWithPettyGirl:pettyGirl];
    if (self) {
        
    }
    return self;
}

- (void)show{
    NSLog(@"-----美女的信息如下:");
    [super.pettyGirl goodLooking];
    [super.pettyGirl niceFigure];
    [super.pettyGirl greatTemperament];
}

@end
