//
//  NovelBook.h
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/8.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IBook.h"
NS_ASSUME_NONNULL_BEGIN

@interface NovelBook : NSObject<IBook>
- (id)initWithName:(NSString *)name price:(NSInteger)price author:(NSString *)author;
@end

NS_ASSUME_NONNULL_END
