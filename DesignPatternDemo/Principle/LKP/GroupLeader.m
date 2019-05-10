//
//  GroupLeader.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/9.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "GroupLeader.h"
#import "Girl.h"

@interface GroupLeader ()
@property (nonatomic,strong) NSMutableArray<Girl *> * listGirls;
@end

@implementation GroupLeader

- (id)initWithListGirls:(NSMutableArray<Girl *> *)listGirls{
    self = [super init];
    if (self) {
        _listGirls = listGirls;
    }
    return self;
}

- (void)countGirls{
    NSLog(@"女生数量是:%ld",self.listGirls.count);
}

@end
