//
//  ListAdapterProtocal.h
//  AdapterPatternDemo
//
//  Created by aron on 2017/7/18.
//  Copyright © 2017年 aron. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "SectionHeaderFooterAdapterProtocol.h"
#import "CellAdapterProtocal.h"

@protocol ListAdapterProtocal <NSObject, SectionHeaderFooterAdapterProtocol, CellAdapterProtocal>
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView;
@end
