//
//  SignInfo.h
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/13.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SignInfo : NSObject
@property (nonatomic,copy) NSString * infoId;
@property (nonatomic,copy) NSString * location;
@property (nonatomic,copy) NSString * subject;
@property (nonatomic,copy) NSString * postAddress;
@end

NS_ASSUME_NONNULL_END
