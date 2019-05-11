//
//  Mail.h
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/10.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdvTemplate.h"
NS_ASSUME_NONNULL_BEGIN

@interface Mail : NSObject<NSCopying>
@property (nonatomic,copy) NSString * receiver;
@property (nonatomic,copy) NSString * subject;
@property (nonatomic,copy) NSString * appellation;
@property (nonatomic,copy) NSString * contxt;
@property (nonatomic,copy) NSString * tail;
- (instancetype)initWithMail:(AdvTemplate *)advTemplate;
@end

NS_ASSUME_NONNULL_END
