//
//  Women.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/11.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "Women.h"

@interface Women ()
{
    NSInteger _type;
    NSString * _request;
}
@end

@implementation Women

- (instancetype)initWithType:(LevelType)type request:(NSString *)request{
    self = [super init];
    if (self) {
        _type = type;
        switch (type) {
            case fatherType:
            {
                _request = [NSString stringWithFormat:@"女儿的请求是:%@",request];
            }
                break;
            case husbandType:
            {
                _request = [NSString stringWithFormat:@"妻子的请求是:%@",request];
            }
                break;
            case sonType:
            {
                _request = [NSString stringWithFormat:@"母亲的请求是:%@",request];
            }
                break;
            default:
                break;
        }
        _request = request;
    }
    return self;
}

- (NSInteger)getType{
    return _type;
}

- (NSString *)getRequest{
    return _request;
}

@end
