//
//  TextViewChangeModel.m
//  DesignPatternDemo
//
//  Created by wupeng on 2019/10/24.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "WPTextViewChangeModel.h"

@implementation WPTextViewChangeModel

- (id)initWithText:(NSString *)text{
    self = [super init];
    if (self) {
        _text = text;
    }
    return self;
}

@end
