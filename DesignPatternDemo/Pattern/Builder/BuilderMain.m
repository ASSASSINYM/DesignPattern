//
//  BuilderMain.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/9.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "BuilderMain.h"
#import "Director.h"

/*
 1.按不同牌子组装各种类型的车子
 奔驰、宝马;启动、停止、喇叭、引擎
 
 2.组装各种品牌手机:https://blog.csdn.net/gdutxiaoxu/article/details/52124383
 手机品牌:索尼，三星，小米;分辨率，CPU，摄像
 */
@implementation BuilderMain
- (void)main{
    Director * director = [Director new];
    for (int i = 0; i<10; i++) {
        [[director getABenzModel] run];
    }
    
    for (int i = 0; i<10; i++) {
        [[director getBBenzModel] run];
    }
    
    for (int i = 0; i<10; i++) {
        [[director getCBenzModel] run];
    }
}
@end
