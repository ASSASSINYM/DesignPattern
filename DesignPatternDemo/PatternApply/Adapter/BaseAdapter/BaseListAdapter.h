//
//  BaseListAdapter.h
//  AdapterPatternDemo
//
//  Created by aron on 2017/7/18.
//  Copyright © 2017年 aron. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ListAdapterProtocal.h"


@interface BaseListAdapter : NSObject <ListAdapterProtocal>

@property (nonatomic, strong) NSMutableArray<id<SectionHeaderFooterAdapterProtocol>>* sections;

@end
