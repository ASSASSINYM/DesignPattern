//
//  LetterProcessImpl.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/11.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "LetterProcessImpl.h"

@implementation LetterProcessImpl

- (void)writeContext:(NSString *)context{
    NSLog(@"填写信的内容");
}

- (void)fillEnvelope:(NSString *)address{
    NSLog(@"填写收件人地址及姓名%@",address);
}

- (void)letterInotoEnvelope{
    NSLog(@"把信放到信封中");
}

- (void)sendLetter{
    NSLog(@"邮递信件");
}

@end
