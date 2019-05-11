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

//被观察者接口
@protocol Observable <NSObject>

@required
- (void)addObserver:(id<Observer>)server;
- (void)deleteObserver:(id<Observer>)server;
- (void)notifyObservers:(NSString *)context;

@end

@protocol IHanFeiZi <NSObject>

@required
- (void)haveBreakfast;
- (void)haveFun;

@end


