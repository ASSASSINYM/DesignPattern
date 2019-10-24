//
//  BaseCellAdapter.h
//  AdapterPatternDemo
//
//  Created by aron on 2017/7/18.
//  Copyright © 2017年 aron. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CellAdapterProtocal.h"


@interface BaseCellAdapter : NSObject <CellAdapterProtocal>

@property (nonatomic, strong) NSMutableArray* datas;
- (instancetype)initWithTableView:(UITableView*)tableView datas:(NSMutableArray*)datas;


#pragma mark - ......::::::: override :::::::......
- (NSArray*)registerCellClasses;

@end
