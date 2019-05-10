//
//  LKPMain.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/9.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "LKPMain.h"
#import "Girl.h"
#import "Teacher.h"
#import "GroupLeader.h"

@implementation LKPMain
/*
 一个类只和朋友交流，不与陌生类交流
 */
- (void)main{
    NSMutableArray<Girl *> * listGirls = [NSMutableArray new];//非朋友类
    for (int i = 0; i<20; i++) {
        [listGirls addObject:[Girl new]];
    }
    Teacher * teacher = [Teacher new];
    
    [teacher commond:[[GroupLeader alloc] initWithListGirls:listGirls]];
}

@end
