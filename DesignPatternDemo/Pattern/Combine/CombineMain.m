//
//  CombineMain.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/11.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "CombineMain.h"
#import "Root.h"
#import "Branch.h"
#import "Leaf.h"

@implementation CombineMain
//太长了，没写完。没看出具体东西来
- (void)main{
    id<IRoot> ceo = [[Root alloc] initWithName:@"王大麻子" position:@"总经理" salary:100000];
    
    id<IBranch> developDep = [[Branch alloc] initWithName:@"刘大1" position:@"研发部门经理" salary:10000];
    id<IBranch> salesDep = [[Branch alloc] initWithName:@"刘大2" position:@"销售部门经理" salary:10000];
    id<IBranch> financeDep = [[Branch alloc] initWithName:@"刘大3" position:@"财务部门经理" salary:10000];
    
    id<IBranch> firstDepGroup = [[Branch alloc] initWithName:@"刘二1" position:@"组长1" salary:5000];
    id<IBranch> secondDepGroup = [[Branch alloc] initWithName:@"刘二2" position:@"组长2" salary:6000];

    id<ILeaf> a = [[Leaf alloc] initWithName:@"a" position:@"开发人员" salary:2000];
    id<ILeaf> b = [[Leaf alloc] initWithName:@"b" position:@"开发人员" salary:2000];
    id<ILeaf> c = [[Leaf alloc] initWithName:@"c" position:@"开发人员" salary:2000];
    id<ILeaf> d = [[Leaf alloc] initWithName:@"d" position:@"开发人员" salary:2000];
    id<ILeaf> e = [[Leaf alloc] initWithName:@"e" position:@"开发人员" salary:2000];
    id<ILeaf> f = [[Leaf alloc] initWithName:@"f" position:@"开发人员" salary:2000];
    
    [ceo addBranch:developDep];
    [ceo addBranch:salesDep];
    [ceo addBranch:financeDep];
    
//    [developDep add]
}

@end
