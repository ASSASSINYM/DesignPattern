//
//  Visitor.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/11.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "VisitorMain.h"
#import "Manager.h"
#import "CommonEmployee.h"
#import "Visitor.h"

@implementation VisitorMain

- (void)main{
    NSMutableArray<Employee *> * empList = [NSMutableArray new];
    CommonEmployee * zhangSan = [CommonEmployee new];
    [zhangSan setJob:@"编写Java程序，绝对的蓝领、苦工加搬运工"];
    [zhangSan setName:@"张三"];
    [zhangSan setSalary:1800];
    [zhangSan setSex:maleType];
    
    [empList addObject:zhangSan];
    
    CommonEmployee * liSi = [CommonEmployee new];
    [liSi setJob:@"页面美工，审美素质太不流行了!"];
    [liSi setName:@"李四"];
    [liSi setSalary:1900];
    [liSi setSex:femaleType];
    
    [empList addObject:liSi];

    Manager * wangWu = [Manager new];
    [wangWu setName:@"王五"];
    [wangWu setPerformance:@"基本上是负值,但是我会拍马屁呀"];
    [wangWu setSex:maleType];
    [empList addObject:wangWu];
    
    for (Employee * emp in empList) {
//        [emp report];
        [emp accept:[Visitor new]];
    }
}

@end
