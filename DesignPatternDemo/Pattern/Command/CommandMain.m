//
//  Command.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/11.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "CommandMain.h"
#import "RequirementGroup.h"
#import "PageGroup.h"
#import "CodeGroup.h"

#import "Invoker.h"
#import "Command.h"
#import "AddRequirementCommand.h"
#import "DeletePageCommand.h"

@implementation CommandMain

- (void)main{
//    Group * rg = [RequirementGroup new];
//    [rg find];
//    [rg add];
//    [rg plan];
//
//    NSLog(@"------客户端要求删除一个节目------");
//    Group * pg = [PageGroup new];
//    [pg find];
//    [pg delete1];
//    [pg plan];
    
    Invoker * xiaosan = [Invoker new];
    NSLog(@"------客户端要求增加一项需求------");
    Command * command = [AddRequirementCommand new];
    [xiaosan setCommand:command];
    [xiaosan action];
    
    NSLog(@"------客户端要求删除一个节目------");
    Command * delcommand = [DeletePageCommand new];
    [xiaosan setCommand:delcommand];
    [xiaosan action];
}

@end
