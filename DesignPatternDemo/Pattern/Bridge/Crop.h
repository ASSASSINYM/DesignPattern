//
//  Crop.h
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/13.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Product;

NS_ASSUME_NONNULL_BEGIN

@interface Crop : NSObject
- (void)makeMoney;
- (instancetype)initWithProduct:(Product *)product;
@end


NS_ASSUME_NONNULL_END
