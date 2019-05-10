//
//  InterfaceMain.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/9.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "InterfaceMain.h"
#import "IPettyGirl.h"
#import "PettyGirl.h"
#import "Searcher.h"

@implementation InterfaceMain

- (void)main{
    id<IPettyGirl> yanYan = [[PettyGirl alloc] initWithName:@"燕燕"];
    AbstractSearcher * searcher = [[Searcher alloc] initWithPettyGirl:yanYan];
    [searcher show];
}

@end
