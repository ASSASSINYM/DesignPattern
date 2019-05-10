//
//  BuilderMain.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/9.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "BuilderMain.h"
#import "Director.h"
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
