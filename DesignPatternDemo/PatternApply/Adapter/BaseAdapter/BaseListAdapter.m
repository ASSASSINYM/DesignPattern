//
//  BaseListAdapter.m
//  AdapterPatternDemo
//
//  Created by aron on 2017/7/18.
//  Copyright © 2017年 aron. All rights reserved.
//

#import "BaseListAdapter.h"


@implementation BaseListAdapter 


#pragma mark - ......::::::: Section Handler :::::::......

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.sections.count;
}


#pragma mark - ......::::::: Section Handler :::::::......

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    id<SectionHeaderFooterAdapterProtocol> sectionAdapter = self.sections[section];
    return [sectionAdapter tableView:tableView heightForHeaderInSection:section];
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    id<SectionHeaderFooterAdapterProtocol> sectionAdapter = self.sections[section];
    return [sectionAdapter tableView:tableView titleForHeaderInSection:section];
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    id<SectionHeaderFooterAdapterProtocol> sectionAdapter = self.sections[section];
    return [sectionAdapter tableView:tableView viewForHeaderInSection:section];
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    id<SectionHeaderFooterAdapterProtocol> sectionAdapter = self.sections[section];
    return [sectionAdapter tableView:tableView heightForFooterInSection:section];
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section {
    id<SectionHeaderFooterAdapterProtocol> sectionAdapter = self.sections[section];
    return [sectionAdapter tableView:tableView viewForFooterInSection:section];
}


#pragma mark - ......::::::: Cell Handler :::::::......

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    id<SectionHeaderFooterAdapterProtocol> cellAdapter = self.sections[section];
    return [cellAdapter tableView:tableView numberOfRowsInSection:section];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    id<SectionHeaderFooterAdapterProtocol> cellAdapter = self.sections[indexPath.section];
    return [cellAdapter tableView:tableView cellForRowAtIndexPath:indexPath];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    id<SectionHeaderFooterAdapterProtocol> cellAdapter = self.sections[indexPath.section];
    return [cellAdapter tableView:tableView didSelectRowAtIndexPath:indexPath];
}

@end
