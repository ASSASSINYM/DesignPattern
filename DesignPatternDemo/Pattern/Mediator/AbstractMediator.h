//
//  AbstractMediator.h
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/10.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import <Foundation/Foundation.h>
//在OC上用这个代码实现上有点问题，AbstractMediator中持有Purchase,Stock,Sale对象，而这三个对象父类AbstractColleague又持有了AbstractMediator，在语法上编译都通过不了。
NS_ASSUME_NONNULL_BEGIN

@interface AbstractMediator : NSObject

@end

@interface AbstractMediator (Abstract)
- (void)execute:(NSString *)str objects:(NSArray<NSNumber *> *)objects;
@end

NS_ASSUME_NONNULL_END
