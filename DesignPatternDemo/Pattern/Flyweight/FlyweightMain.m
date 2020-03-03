//
//  Flyweight.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/13.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "FlyweightMain.h"
#import "SignInfo.h"
#import "SignInfo4Pool.h"
#import "SignInfoFactory.h"

@implementation FlyweightMain
/*
 这个享元模式不对吧,signInfo从池中取出，更改所有对象都改了。
 正确姿势:location,subject组成对象，放在缓存池中
 SignInfo对象存储一份model即可，即所有的SignInfo都持有缓冲池中的location,subject组成对象
 */

- (void)main{
    SignInfoFactory * signInfoFactory = [SignInfoFactory new];
    for (int i = 0; i<4; i++) {
        NSString * subject = [NSString stringWithFormat:@"科目%d",i];
        for (int j = 0; j<30; j++) {
            NSString * key = [NSString stringWithFormat:@"%@考试地点%d",subject,j];
            [signInfoFactory getSignInfo:key];
        }
    }
    SignInfo * signInfo = [signInfoFactory getSignInfo:@"科目1考试地点1"];
    //疑问:id与地址怎么获取最新的呢?
    
}

@end
