//
//  Employee.h
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/11.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IVisitor.h"

typedef NS_ENUM(NSInteger,EmployeeMaleType) {
    maleType,
    femaleType,
};

NS_ASSUME_NONNULL_BEGIN

@interface Employee : NSObject
@property (nonatomic,copy) NSString * name;
@property (nonatomic,assign) NSInteger salary;
@property (nonatomic,assign) NSInteger sex;
- (void)report;
@end

@interface Employee (Abstract)
- (NSString *)getOtherInfo;
- (void)accept:(id<IVisitor>)visitor;
@end

NS_ASSUME_NONNULL_END
