//
//  TextViewCaretaker.h
//  DesignPatternDemo
//
//  Created by wupeng on 2019/10/24.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import <Foundation/Foundation.h>
@class TextViewChangeModel;
NS_ASSUME_NONNULL_BEGIN

@interface TextViewCaretaker : NSObject
@property (nonatomic,strong) NSMutableArray<TextViewChangeModel*> * changeModelArray;
- (TextViewChangeModel *)getModel;
- (void)textChangeWithChangeModel:(TextViewChangeModel *)model;
- (TextViewChangeModel *)restoreChangeModel;
@end

NS_ASSUME_NONNULL_END
