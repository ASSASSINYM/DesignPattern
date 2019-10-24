//
//  BaseSectionAdapter.m
//  AdapterPatternDemo
//
//  Created by aron on 2017/7/18.
//  Copyright © 2017年 aron. All rights reserved.
//

#import "BaseSectionAdapter.h"

@implementation BaseSectionAdapter

- (instancetype)initWithCellAdapter:(id<CellAdapterProtocal>)cellAdapter sectionTitle:(NSString*)sectionTitle sectionHeight:(NSInteger)sectionHeight {
    self = [super init];
    if (self) {
        _cellAdapter = cellAdapter;
        _sectionTitle = sectionTitle;
        _sectionHeight = sectionHeight;
    }
    return self;
}

#pragma mark - ......::::::: Section Handler :::::::......

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return self.sectionHeight;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return self.sectionTitle;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    return nil;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return 0;
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section {
    return nil;
}


#pragma mark - ......::::::: Cell Handler :::::::......
#pragma mark 使用事件转发处理Cell

- (BOOL)respondsToSelector:(SEL)aSelector
{
    BOOL responds = [super respondsToSelector:aSelector];
    if (!responds && self.cellAdapter != self) {
        responds = [self.cellAdapter respondsToSelector:aSelector];
    }
    return responds;
}

- (id)forwardingTargetForSelector:(SEL)aSelector {
    if ([self.cellAdapter respondsToSelector:aSelector]) {
        return self.cellAdapter;
    }
    return self;
}

@end
