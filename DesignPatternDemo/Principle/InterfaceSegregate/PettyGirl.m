//
//  PettyGirl.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/9.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "PettyGirl.h"

@interface PettyGirl ()
{
    NSString * _name;
}
@end

@implementation PettyGirl

- (id)initWithName:(NSString *)name{
    self = [super init];
    if (self) {
        _name = name;
    }
    return self;
}

- (void)goodLooking{
    NSLog(@"%@脸蛋很漂亮!",_name);
}

- (void)niceFigure{
    NSLog(@"%@身材非常棒!",_name);
}

- (void)greatTemperament{
    NSLog(@"%@气质非常好!",_name);
}

@end
