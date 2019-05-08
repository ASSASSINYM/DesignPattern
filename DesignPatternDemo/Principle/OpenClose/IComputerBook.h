//
//  IComputerBook.h
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/8.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol IComputerBook <NSObject>

@required
- (NSString *)getScope;

@end

NS_ASSUME_NONNULL_END
