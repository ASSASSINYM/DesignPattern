//
//  OffNovelBook.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/8.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "OffNovelBook.h"

@interface OffNovelBook ()

@end

@implementation OffNovelBook

- (id)initWithName:(NSString *)name price:(NSInteger)price author:(NSString *)author{
    self = [super initWithName:name price:price author:author];
    if (self) {

    }
    return self;
}

- (NSInteger)getPrice{
    NSInteger selfPrice = [super getPrice];
    NSInteger offPrice = 0;
    if (selfPrice>4000) {
        offPrice = selfPrice*0.9;
    }else{
        offPrice = selfPrice*0.8;
    }
    return offPrice;
}

@end
