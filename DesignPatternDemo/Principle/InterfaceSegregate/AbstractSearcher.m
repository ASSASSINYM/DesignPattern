//
//  AbstractSearcher.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/9.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "AbstractSearcher.h"
#import "IPettyGirl.h"

@interface AbstractSearcher ()

@end

@implementation AbstractSearcher

- (id)initWithPettyGirl:(id<IPettyGirl>)pettyGirl{
    self = [super init];
    if (self) {
        _pettyGirl = pettyGirl;
    }
    return self;
}

@end
