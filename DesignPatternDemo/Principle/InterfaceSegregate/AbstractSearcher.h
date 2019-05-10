//
//  AbstractSearcher.h
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/9.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IPettyGirl.h"

NS_ASSUME_NONNULL_BEGIN

@interface AbstractSearcher : NSObject
@property (nonatomic,assign) id<IPettyGirl> pettyGirl;

- (id)initWithPettyGirl:(id<IPettyGirl>)pettyGirl;
@end

@interface AbstractSearcher (Abstruct)
- (void)show;
@end
NS_ASSUME_NONNULL_END
