//
//  BaseCellAdapter.m
//  AdapterPatternDemo
//
//  Created by aron on 2017/7/18.
//  Copyright © 2017年 aron. All rights reserved.
//

#import "BaseCellAdapter.h"

@implementation BaseCellAdapter

- (instancetype)initWithTableView:(UITableView*)tableView datas:(NSMutableArray*)datas {
    self = [super init];
    if (self) {
        // retister cell
        for (Class claz in [self registerCellClasses]) {
            [tableView registerClass:claz forCellReuseIdentifier:NSStringFromClass(claz)];
        }
        _datas = datas;
    }
    return self;
}


#pragma mark - ......::::::: UITableViewDelegate :::::::......

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.datas.count;
}


#pragma mark - ......::::::: override :::::::......
- (NSArray*)registerCellClasses {
    return nil;
}

@end
