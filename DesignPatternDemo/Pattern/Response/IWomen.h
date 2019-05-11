//
//  IWonmen.h
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/11.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger,LevelType) {
    fatherType,
    husbandType,
    sonType,
};


@protocol IWomen <NSObject>

@required
- (NSInteger)getType;
- (NSString *)getRequest;
@optional

@end
