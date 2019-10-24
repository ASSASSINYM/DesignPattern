//
//  GameCellAdapter.m
//  AdapterPatternDemo
//
//  Created by aron on 2017/7/18.
//  Copyright © 2017年 aron. All rights reserved.
//

#import "GameCellAdapter.h"
#import "GameCell.h"
#import "GameModel.h"


@implementation GameCellAdapter

#pragma mark - ......::::::: UITableViewDelegate :::::::......

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    GameCell* cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([GameCell class])];
    GameModel* gameModel = self.datas[indexPath.row];
    [cell loadData:gameModel indexPath:indexPath];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    UITableViewCell* cell = [tableView cellForRowAtIndexPath:indexPath];
}


#pragma mark - ......::::::: override :::::::......
- (NSArray*)registerCellClasses {
    return @[[GameCell class]];
}

@end
