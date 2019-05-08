//
//  NovelBook.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/8.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "NovelBook.h"

@interface NovelBook ()
{
    NSString * _name;
    NSInteger _price;
    NSString * _author;
}

@end

@implementation NovelBook

- (id)initWithName:(NSString *)name price:(NSInteger)price author:(NSString *)author{
    self = [super init];
    if (self) {
        _name = name;
        _price = price;
        _author = author;
    }
    return self;
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
