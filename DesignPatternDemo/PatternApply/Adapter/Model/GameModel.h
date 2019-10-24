//
//  GameModel.h
//  AdapterPatternDemo
//
//  Created by aron on 2017/5/25.
//  Copyright © 2017年 aron. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <YYModel.h>

@interface GameModel : NSObject<YYModel>

@property (nonatomic, assign) NSInteger gid;
@property (nonatomic, copy) NSString* name;
@property (nonatomic, assign) NSInteger hot;
@property (nonatomic, assign) float point;
@property (nonatomic, copy) NSString* link;
@property (nonatomic, copy) NSString* image;
@property (nonatomic, copy) NSString* category;

@end
