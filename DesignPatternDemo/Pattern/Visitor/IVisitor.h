//
//  IVisitor.h
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/11.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@class CommonEmployee;
@class Manager;

@protocol IVisitor <NSObject>

@required
- (void)visitCommonEmployee:(CommonEmployee *)commonEmployee;
- (void)visitManager:(Manager *)manager;

@end

