//
//  SignInfoFactory.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/13.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "SignInfoFactory.h"
#import "SignInfo4Pool.h"

@interface SignInfoFactory ()
@property (nonatomic,strong) NSMutableDictionary<NSString *,SignInfo *> * pool;
@end

@implementation SignInfoFactory

//原理:把科目与考试地点共享
- (SignInfo *)getSignInfo:(NSString *)key{
    SignInfo * result;
    if (![self.pool objectForKey:key]) {
        NSLog(@"%@---建立对象，并放置到池中",key);
        result = [[SignInfo4Pool alloc] initWithKey:key];
        [self.pool setObject:result forKey:key];
    }else{
        result = self.pool[key];
        NSLog(@"%@---直接从池中取得",key);
    }
    return result;
}

- (NSMutableDictionary<NSString *,SignInfo *> *)pool{
    if (!_pool) {
        _pool = [NSMutableDictionary new];
    }
    return _pool;
}

@end
