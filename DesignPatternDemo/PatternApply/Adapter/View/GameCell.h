//
//  GameCell.h
//  AdapterPatternDemo
//
//  Created by aron on 2017/5/22.
//  Copyright © 2017年 aron. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GameCell : UITableViewCell

- (void)loadData:(id)data indexPath:(NSIndexPath *)indexPath;

@end
