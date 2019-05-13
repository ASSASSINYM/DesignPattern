//
//  Police.h
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/11.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ILetterProcess.h"
NS_ASSUME_NONNULL_BEGIN

@interface Police : NSObject
- (void)checkLetter:(id<ILetterProcess>)letterProcess;
@end

NS_ASSUME_NONNULL_END
