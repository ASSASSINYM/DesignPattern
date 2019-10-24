//
//  TextViewCaretaker.m
//  DesignPatternDemo
//
//  Created by wupeng on 2019/10/24.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "TextViewCaretaker.h"

@implementation TextViewCaretaker

- (NSMutableArray<TextViewChangeModel *> *)changeModelArray{
    if (!_changeModelArray) {
        _changeModelArray = [[NSMutableArray alloc] init];
    }
    return _changeModelArray;
}

- (void)textChangeWithChangeModel:(TextViewChangeModel *)model{
    if (model) {
        [self.changeModelArray addObject:model];
    }
}

- (TextViewChangeModel *)restoreChangeModel{
    [self.changeModelArray removeLastObject];
    return self.getModel;
}

- (TextViewChangeModel *)getModel{
    return self.changeModelArray.lastObject;
}

@end
