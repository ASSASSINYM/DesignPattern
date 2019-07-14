//
//  CMApnsAlertView.m
//  CMMessageCenterUI
//
//  Created by ruantong on 2018/8/2.
//

#import "CMApnsAlertView.h"
#import "Headers.h"
#import "Masonry.h"

@implementation CMApnsAlertView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)init{
    self = [super init];
    if (self) {
        
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(didBecomeActiveMethod:)
                                                     name:UIApplicationDidBecomeActiveNotification object:nil];
        
        self.frame = CGRectMake(0, [[UIScreen mainScreen] bounds].size.height, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height);
        [self drawView];
    }
    return self;
}

- (void)drawView{

    self.backgroundColor = [HEX_COLOR(0x000000) colorWithAlphaComponent:0.3f];
    
    UIImageView * bgImageView = [[UIImageView alloc] init];
    bgImageView.image = [UIImage imageNamed:@"apns_alert"];
    [self addSubview:bgImageView];
    
    UIButton * goOpenButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [goOpenButton setTitle:@"去开启" forState:UIControlStateNormal];
    [goOpenButton setTitleColor:HEX_COLOR(0x3778FF) forState:UIControlStateNormal];
    goOpenButton.titleLabel.font = [UIFont systemFontOfSize:16];
    goOpenButton.backgroundColor = HEX_COLOR(0xffffff);
    goOpenButton.layer.cornerRadius = 10;
    goOpenButton.layer.masksToBounds = YES;
    [goOpenButton addTarget:self action:@selector(goOpenAction) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:goOpenButton];
    
    UIButton * closeButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [closeButton setImage:[UIImage imageNamed:@"apns_close"] forState:UIControlStateNormal];
    [closeButton addTarget:self action:@selector(closeAction) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:closeButton];
    
    CGSize screenSize = [UIScreen mainScreen].bounds.size;
    CGFloat scaleWidth = screenSize.width/375.0;
    CGFloat scaleHeight = screenSize.height/667.0;

    [bgImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self);
        make.top.equalTo(self).offset(181*scaleHeight);
        make.size.mas_equalTo(CGSizeMake(290*scaleWidth, 305*scaleWidth));
    }];
    
    [goOpenButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(251*scaleWidth, 37*scaleWidth));
        make.bottom.equalTo(bgImageView.mas_bottom).offset(-21);
        make.centerX.equalTo(bgImageView);
    }];
    
    [closeButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(37*scaleWidth, 37*scaleWidth));
        make.centerX.equalTo(bgImageView);
        make.top.equalTo(bgImageView.mas_bottom).offset(22);
    }];
}

- (void)dealloc{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

#pragma mark - action
- (void)goOpenAction{
    [self close];
}

- (void)closeAction{
    [self close];
}

#pragma mark - NSNotification

- (void)didBecomeActiveMethod:(NSNotification *)notification{
    [self close];
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
    return apnsAlertViewType;
}

- (void)respons:(id<AlertViewRequestProtocol>)alertView{
    [self show];
}

@end
