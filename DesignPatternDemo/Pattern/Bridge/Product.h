//
//  Product.h
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/13.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Product : NSObject

@end

@interface Product (Abstract)
- (void)beProducted;
- (void)beSelled;
@end

NS_ASSUME_NONNULL_END
