//
//  Police.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/11.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "Police.h"

@implementation Police

- (void)checkLetter:(id<ILetterProcess>)letterProcess{
    NSLog(@"%@信件已经检查过了",letterProcess);
}

@end
