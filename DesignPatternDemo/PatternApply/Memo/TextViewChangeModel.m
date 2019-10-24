//
//  TextViewChangeModel.m
//  DesignPatternDemo
//
//  Created by wupeng on 2019/10/24.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "TextViewChangeModel.h"

@implementation TextViewChangeModel

- (id)initWithText:(NSString *)text replaceText:(NSString *)replaceText{
    self = [super init];
    if (self) {
        _text = text;
        _replaceText = text;
    }
    return self;
}

@end
