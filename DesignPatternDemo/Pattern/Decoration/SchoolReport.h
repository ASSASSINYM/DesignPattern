//
//  SchoolReport.h
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/11.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SchoolReport : NSObject

@end

@interface SchoolReport(Abstract)
//没有属性，可抽象为协议
- (void)report;
- (void)sign:(NSString *)name;

@end

NS_ASSUME_NONNULL_END
