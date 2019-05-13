//
//  Caretaker.h
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/11.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Menento.h"

NS_ASSUME_NONNULL_BEGIN

@interface Caretaker : NSObject
@property (nonatomic,strong) Menento * memento;
@end

NS_ASSUME_NONNULL_END
