//
//  Observable.h
//  DesignPatternDemo
//
//  Created by wupeng on 2020/2/7.
//  Copyright © 2020 wupeng. All rights reserved.
//

#ifndef Observable_h
#define Observable_h
#import "IObserver.h"

//被观察者接口
@protocol Observable <NSObject>

@required
- (void)addObserver:(id<Observer>)server;
- (void)deleteObserver:(id<Observer>)server;
- (void)notifyObservers:(NSString *)context;

@end

#endif /* Observable_h */
