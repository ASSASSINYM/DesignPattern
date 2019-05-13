//
//  ModenPostOffice.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/11.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "ModenPostOffice.h"
#import "LetterProcessImpl.h"
#import "Police.h"

@interface ModenPostOffice()
{
    id<ILetterProcess> _letterProcess;
    Police * _letterPolice;
}
@end

@implementation ModenPostOffice

- (instancetype)init{
    self = [super init];
    if (self) {
        _letterProcess = [LetterProcessImpl new];
        _letterPolice = [Police new];
    }
    return self;
}

- (void)sendLetter:(NSString *)context address:(NSString *)address{
    [_letterProcess writeContext:context];
    [_letterProcess fillEnvelope:address];
    [_letterPolice checkLetter:_letterProcess];
    [_letterProcess letterInotoEnvelope];
    [_letterProcess sendLetter];
}

@end
