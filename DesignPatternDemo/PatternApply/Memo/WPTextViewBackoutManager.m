//
//  TextViewCaretaker.m
//  DesignPatternDemo
//
//  Created by wupeng on 2019/10/24.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "WPTextViewBackoutManager.h"

@implementation WPTextViewBackoutManager

- (void)textChangeWithChangeModel:(WPTextViewChangeModel *)model{
    if (model) {
        [self.changeModelArray addObject:model];
    }
}

- (WPTextViewChangeModel *)restoreChangeModel{
    [self.changeModelArray removeLastObject];
    return self.changeModelArray.lastObject;
}

- (NSMutableArray<WPTextViewChangeModel *> *)changeModelArray{
    if (!_changeModelArray) {
        _changeModelArray = [[NSMutableArray alloc] init];
    }
    return _changeModelArray;
}

@end
