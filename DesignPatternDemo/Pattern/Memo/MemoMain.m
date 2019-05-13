//
//  MemoMain.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/11.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "MemoMain.h"
#import "Boy.h"
#import "Caretaker.h"

@implementation MemoMain

- (void)main{
    Boy * boy = [Boy new];
    [boy setState:@"心情很棒!"];
    Caretaker * caretabker = [Caretaker new];
    NSLog(@"=====男孩现在的状态======");
    NSLog(@"%@",boy.state);
    
    [caretabker setMemento:[boy createMemento]];
    [boy changeState];
    NSLog(@"=====男孩追女孩子后的状态======");
    NSLog(@"%@",boy.state);
    [boy restoreMemento:caretabker.memento];
    NSLog(@"=====男孩恢复后的状态======");
    NSLog(@"%@",boy.state);
}

@end
