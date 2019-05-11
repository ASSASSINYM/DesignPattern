//
//  DeletePageCommand.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/11.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "DeletePageCommand.h"

@implementation DeletePageCommand

- (void)execute{
    [[super pg] find];
    [[super pg] delete1];
    [[super pg] plan];
}

@end
