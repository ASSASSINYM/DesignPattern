//
//  ResponseMain.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/11.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "ResponseMain.h"
#import "Women.h"
#import "Father.h"
#import "Husband.h"
#import "Son.h"

@implementation ResponseMain

- (void)main{
    NSMutableArray<id<IWomen>> * arrayList = [NSMutableArray new];
    for (int i = 0; i<5; i++) {
        [arrayList addObject:[[Women alloc] initWithType:arc4random()%3 request:@"我要出去逛街"]];
    }
    Father * father = [Father new];
    Husband * husband = [Husband new];
    Son * son = [Son new];
    [father setNext:husband];
    [husband setNext:son];
    
    for (id<IWomen> women in arrayList) {
        [father handleMessage:women];
    }
}

@end
