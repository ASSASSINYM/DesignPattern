//
//  Father.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/11.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "Father.h"

@implementation Father

- (instancetype)init{
    self = [super initWithLevel:fatherType];
    if (self) {
        
    }
    return self;
}

- (void)respons:(id<IWomen>)women{
    NSLog(@"-----女儿向父亲请示-----");
    NSLog(@"%@",[women getRequest]);
    NSLog(@"父亲的答复是:同意");
}

@end
