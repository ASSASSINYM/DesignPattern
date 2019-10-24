//
//  BaseSectionAdapter.h
//  AdapterPatternDemo
//
//  Created by aron on 2017/7/18.
//  Copyright © 2017年 aron. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SectionHeaderFooterAdapterProtocol.h"
#import "CellAdapterProtocal.h"

@interface BaseSectionAdapter : NSObject <SectionHeaderFooterAdapterProtocol, CellAdapterProtocal>

@property (nonatomic, strong) NSString* sectionTitle;
@property (nonatomic, assign) NSInteger sectionHeight;
@property (nonatomic, strong) id<CellAdapterProtocal> cellAdapter;

- (instancetype)initWithCellAdapter:(id<CellAdapterProtocal>)cellAdapter sectionTitle:(NSString*)sectionTitle sectionHeight:(NSInteger)sectionHeight;

@end
