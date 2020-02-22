//
//  SignInfo.h
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/13.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
//考试科目与地点是固定的
@interface SignInfo : NSObject
@property (nonatomic,copy) NSString * infoId;//报名人员的ID
@property (nonatomic,copy) NSString * location;//考试地点
@property (nonatomic,copy) NSString * subject;//考试科目
@property (nonatomic,copy) NSString * postAddress;//邮寄地址
@end

NS_ASSUME_NONNULL_END
