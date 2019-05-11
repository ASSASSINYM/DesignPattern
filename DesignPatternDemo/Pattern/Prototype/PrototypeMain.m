//
//  PrototypeMain.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/10.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "PrototypeMain.h"
#import "Mail.h"
@implementation PrototypeMain
- (void)main{
    Mail * mail = [[Mail alloc] initWithMail:[[AdvTemplate alloc] init]];
    [mail setTail:@"XX银行版权所有"];
    int i = 0;
    while (i<6) {
        Mail * cloneMail = [mail copy];
        [cloneMail setAppellation:[NSString stringWithFormat:@"%d 先生(女士)",i]];
        [cloneMail setReceiver:[NSString stringWithFormat:@"%d @.com",i]];
        [self sendMail:cloneMail];
        i++;
    }
}

- (void)sendMail:(Mail *)mail{
    NSLog(@"标题:%@,收件人:%@,发送成功",[mail subject],[mail receiver]);
}

- (NSString *)getRandString:(NSInteger)maxLength{
    NSString * source = @"abcdefghijklmnopqrskuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
    return source;
}

@end
