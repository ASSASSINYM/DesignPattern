//
//  MemoTextView.h
//  DesignPatternDemo
//
//  Created by wupeng on 2019/10/24.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MemoTextView : UITextView
- (void)textViewBackoutAction;//自定义撤销按钮可调用此事件
@end

NS_ASSUME_NONNULL_END
