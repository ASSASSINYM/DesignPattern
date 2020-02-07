//
//  IHanFeiZi.h
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/11.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import <Foundation/Foundation.h>
//观察者接口
@protocol Observer <NSObject>

@required
- (void)update:(NSString *)context;
@end



