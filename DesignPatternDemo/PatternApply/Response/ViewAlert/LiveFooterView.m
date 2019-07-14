//
//  LiveFooterView.m
//  HWTou
//
//  Created by robinson on 2018/3/20.
//  Copyright © 2018年 LieMi. All rights reserved.
//

#import "LiveFooterView.h"

@interface LiveFooterView()<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UIButton *playOrPuaseBtn;
@property (weak, nonatomic) IBOutlet UIButton *printBtn;

@end

@implementation LiveFooterView

- (void)awakeFromNib{
    [super awakeFromNib];
    self.frame = CGRectMake(0, [[UIScreen mainScreen] bounds].size.height, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height);
    self.backgroundColor = [UIColor redColor];
    [self addTarget:self action:@selector(close) forControlEvents:UIControlEventTouchUpInside];

    [self.playOrPuaseBtn setImage:[UIImage imageNamed:@"zb_btn_zt"] forState:UIControlStateNormal];
    [self.playOrPuaseBtn setImage:[UIImage imageNamed:@"zb_btn_play1"] forState:UIControlStateSelected];
}

#pragma mark - public method

- (void)show{
    if (self.frame.origin.y == 0) {
        return;
    }
    UIWindow *window = [[[UIApplication sharedApplication] delegate] window];
    [window addSubview:self];
    
    [UIView animateWithDuration:0.25 animations:^{
        CGRect frame = self.frame;
        frame.origin.y -= frame.size.height;
        self.frame = frame;
    }];
}

- (void)close{
    if (self.frame.origin.y == self.frame.size.height) {
        return;
    }
    [UIView animateWithDuration:0.25 animations:^{
        CGRect frame = self.frame;
        frame.origin.y += frame.size.height;
        self.frame = frame;
    } completion:^(BOOL finished) {
        [self removeFromSuperview];
    }];
}

#pragma mark - 责任链模式

- (AlertViewType)getCurAlertViewType{
    return liveFooterViewType;
}

- (void)respons:(id<AlertViewRequestProtocol>)women{
    [self show];
}

#pragma mark - static mthod

+ (LiveFooterView *)createLiveFooterView{
    LiveFooterView * liveFooterView = [[[NSBundle mainBundle] loadNibNamed:@"LiveFooterView" owner:self options:nil] lastObject];
    return liveFooterView;
}

@end
