//
//  Human.h
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/9.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Human <NSObject>

@required
- (void)getColor;
- (void)talk;
@optional
- (void)getSex;
@end

