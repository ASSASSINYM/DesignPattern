//
//  IletterProcess.h
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/11.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ILetterProcess <NSObject>

- (void)writeContext:(NSString *)context;
- (void)fillEnvelope:(NSString *)address;
- (void)letterInotoEnvelope;
- (void)sendLetter;

@end

