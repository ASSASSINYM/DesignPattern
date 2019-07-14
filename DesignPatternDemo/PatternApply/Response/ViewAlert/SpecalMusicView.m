//
//  SpecalMusicView.m
//  HWTou
//
//  Created by robinson on 2018/3/21.
//  Copyright © 2018年 LieMi. All rights reserved.
//

#import "SpecalMusicView.h"

@interface SpecalMusicView()
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@end

@implementation SpecalMusicView

- (void)awakeFromNib{
    [super awakeFromNib];
    self.frame = CGRectMake(0, [[UIScreen mainScreen] bounds].size.height, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height);
    self.backgroundColor = [UIColor grayColor];

    [self addTarget:self action:@selector(onTapBackground:) forControlEvents:UIControlEventTouchUpInside];
    
}

- (void)onTapBackground:(id)sender
{
    [self dismiss];
}

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

- (IBAction)closeAction:(id)sender {
    [self dismiss];
}

- (void)dismiss{
    [self removeFromSuperview];
}

#pragma mark - 责任链模式

- (void)respons:(id<AlertViewRequestProtocol>)women{
    [self show];
}

- (AlertViewType)getCurAlertViewType{
    return specalMusicViewType;
}

#pragma mark - static mthod

+ (SpecalMusicView *)createSpecalView{
    SpecalMusicView * specalMusicView = [[[NSBundle mainBundle] loadNibNamed:@"SpecalMusicView" owner:self options:nil] lastObject];
    return specalMusicView;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
