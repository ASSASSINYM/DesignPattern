//
//  Mail.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/10.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "Mail.h"
#import "AdvTemplate.h"

@interface Mail ()

@end

@implementation Mail
- (instancetype)initWithMail:(AdvTemplate *)advTemplate{
    self = [super init];
    if (self) {
        _contxt = [advTemplate getAdvContext];
        _subject = [advTemplate getAdvSubject];
    }
    return self;
}

- (id)copyWithZone:(NSZone *)zone{
    
    Mail * model = [[Mail allocWithZone:zone] init];
    
    model.receiver = self.receiver ;
    model.subject = self.subject ;
    model.appellation = self.appellation ;
    model.contxt = self.contxt ;
    model.tail = self.tail ;
    return model;
    
}

@end
