//
//  Boy.h
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/11.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Menento.h"
NS_ASSUME_NONNULL_BEGIN

@interface Boy : NSObject
@property (nonatomic,copy) NSString * state;
- (void)changeState;
- (void)restoreMemento:(Menento *)memento;
- (Menento *)createMemento;
@end

NS_ASSUME_NONNULL_END
