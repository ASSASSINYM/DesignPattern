//
//  ComputerBook.h
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/8.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IBook.h"
#import "IComputerBook.h"

NS_ASSUME_NONNULL_BEGIN
//对于java中的接口继承接口，可以考虑实现多个协议
@interface ComputerBook : NSObject<IBook,IComputerBook>
- (id)initWithName:(NSString *)name price:(NSInteger)price author:(NSString *)author scope:(NSString *)scope;
@end

NS_ASSUME_NONNULL_END
