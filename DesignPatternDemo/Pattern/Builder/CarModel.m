//
//  CarModel.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/9.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "CarModel.h"

@interface CarModel ()
@property (nonatomic,strong) NSMutableArray<NSString *> * sequence;
@end

@implementation CarModel
//模板模式
- (void)run{
    for (int i = 0; i<self.sequence.count; i++) {
        NSString * actionName = self.sequence[i];
        if ([actionName isEqualToString:@"start"]) {
            [self start];
        }else if ([actionName isEqualToString:@"stop"]){
            [self stop];
        }else if ([actionName isEqualToString:@"engine boom"]){
            [self engineBoom];
        }else if ([actionName isEqualToString:@"alarm"]){
            [self alarm];
        }
    }
}

- (void)setSequence:(NSMutableArray<NSString *> *)sequence{
    _sequence = sequence;
}

@end
