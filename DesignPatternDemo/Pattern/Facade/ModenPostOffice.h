//
//  ModenPostOffice.h
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/11.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ModenPostOffice : NSObject
- (void)sendLetter:(NSString *)context address:(NSString *)address;
@end

NS_ASSUME_NONNULL_END
