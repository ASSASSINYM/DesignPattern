//
//  LKPMain2.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/9.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "LKPMain2.h"
#import "InstallSoftware.h"
@implementation LKPMain2
//迪米特法则要求类“羞涩”一点，尽量不要对外公布太多的public方法和非静态的public变量，尽量内敛
- (void)main{
    InstallSoftware * invoker = [InstallSoftware new];
    [invoker installWizard:[Wizard new]];
}

@end
