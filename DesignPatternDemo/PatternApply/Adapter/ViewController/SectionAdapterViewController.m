//
//  SectionAdapterViewController.m
//  AdapterPatternDemo
//  学习链接:https://blog.csdn.net/zhangyutangde/article/details/78339148
//  Created by aron on 2017/7/18.
//  Copyright © 2017年 aron. All rights reserved.
//

#import "SectionAdapterViewController.h"
#import <Masonry.h>
#import "BaseSectionAdapter.h"
#import "GameCellAdapter.h"
#import "BaseListAdapter.h"
#import "GameModel.h"


@interface SectionAdapterViewController ()
@property (nonatomic, strong) BaseListAdapter* adapter;
@property (nonatomic, strong) UITableView* tableView;
@end

@implementation SectionAdapterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self.view addSubview:self.tableView];
    [self.tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view);
    }];
    
    // datas
    NSMutableArray* datas = [NSMutableArray array];
    
    NSString* path = [[NSBundle mainBundle] pathForResource:@"gamelist.json" ofType:nil];
    NSData* data = [NSData dataWithContentsOfFile:path];
    NSArray* jsonObj = [NSJSONSerialization JSONObjectWithData:data options:0 error:NULL];
    if ([jsonObj isKindOfClass:[NSArray class]]) {
        for (NSDictionary* jsonItem in jsonObj) {
            if ([jsonItem isKindOfClass:[NSDictionary class]]) {
                GameModel* gameModel = [GameModel yy_modelWithDictionary:jsonItem];
                [datas addObject:gameModel];
            }
        }
    }
    
    GameCellAdapter* cellAdapter = [[GameCellAdapter alloc] initWithTableView:self.tableView datas:datas];
    BaseSectionAdapter* fpsSectionAdapter = [[BaseSectionAdapter alloc] initWithCellAdapter:cellAdapter sectionTitle:@"FPS Games" sectionHeight:60];
    BaseSectionAdapter* roleSectionAdapter = [[BaseSectionAdapter alloc] initWithCellAdapter:cellAdapter sectionTitle:@"Role Play Games" sectionHeight:60];

    self.adapter = [[BaseListAdapter alloc] init];
    self.adapter.sections = [@[fpsSectionAdapter, roleSectionAdapter] mutableCopy];
    
    self.tableView.dataSource = self.adapter;
    self.tableView.delegate = self.adapter;
    [self.tableView reloadData];
}

- (UITableView *)tableView {
    if (!_tableView) {
        UITableView* tableView = [UITableView new];
        tableView.estimatedRowHeight = 200;
        tableView.rowHeight = UITableViewAutomaticDimension;
        tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        _tableView = tableView;
    }
    return _tableView;
}

- (void)dealloc {
    NSLog(@"====dealloc====");
}

@end
