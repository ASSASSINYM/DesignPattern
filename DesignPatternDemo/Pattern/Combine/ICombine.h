//
//  ICombine.h
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/11.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "OuterUser.h"

@protocol ICrop <NSObject>

@required
- (NSString *)getInfo;

@optional

@end

@protocol ILeaf <NSObject>

@required

@optional

@end

@protocol IBranch <NSObject>

@required
- (void)addBranch:(id<IBranch>)branch;
- (void)addLeaf:(id<ILeaf>)leaf;
- (NSArray *)getSubordinateInfo;
@optional

@end

@protocol IRoot <NSObject>

@required
- (void)addBranch:(id<IBranch>)branch;
- (void)addLeaf:(id<ILeaf>)leaf;
- (NSArray *)getSubordinateInfo;
@optional

@end

NS_ASSUME_NONNULL_BEGIN

@interface ICombine : OuterUser

@end

NS_ASSUME_NONNULL_END
