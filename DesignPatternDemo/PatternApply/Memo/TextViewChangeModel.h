//
//  TextViewChangeModel.h
//  DesignPatternDemo
//
//  Created by wupeng on 2019/10/24.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface TextViewChangeModel : NSObject
@property (nonatomic,strong,readonly) NSString * text;//保存变化前的字符
@property (nonatomic,strong,readonly) NSString * replaceText;//保存变化的字符
- (id)initWithText:(NSString *)text replaceText:(NSString *)replaceText;
@end

NS_ASSUME_NONNULL_END
