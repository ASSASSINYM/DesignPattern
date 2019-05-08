//
//  ComputerBook.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/8.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "ComputerBook.h"

@interface ComputerBook ()
{
    NSString * _name;
    NSString * _scope;
    NSString * _author;
    NSInteger _price;
}
@end

@implementation ComputerBook

- (id)initWithName:(NSString *)name price:(NSInteger)price author:(NSString *)author scope:(NSString *)scope{
    self = [super init];
    if (self) {
        _name = name;
        _price = price;
        _author = author;
        _scope = scope;
    }
    return self;
}

- (NSString *)getScope{
    return _scope;
}

- (NSString *)getName{
    return _name;
}

- (NSString *)getAuthor{
    return _author;
}

- (NSInteger)getPrice{
    return _price;
}

@end
