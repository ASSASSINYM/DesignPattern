//
//  IBook.h
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/8.
//  Copyright © 2019 wupeng. All rights reserved.
//
#import <Foundation/Foundation.h>
#ifndef IBook_h
#define IBook_h

@protocol IBook <NSObject>

@required
- (NSString *)getName;
- (NSInteger)getPrice;
- (NSString *)getAuthor;
@end

#endif /* IBook_h */
