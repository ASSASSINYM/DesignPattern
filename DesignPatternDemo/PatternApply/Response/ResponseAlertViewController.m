//
//  ResponseAlertViewController.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/10/24.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "ResponseAlertViewController.h"
#import "CMApnsAlertView.h"
#import "LiveFooterView.h"
#import "SpecalMusicView.h"
#import "AlertViewRequest.h"

@interface ResponseAlertViewController ()
{
    NSInteger alertCount;
    CMApnsAlertView * apnsAlertView;
}
@end

@implementation ResponseAlertViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton * button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(20, 100, 100, 40);
    [button setTitle:@"下一个" forState:UIControlStateNormal];
    button.backgroundColor = [UIColor grayColor];
    [button addTarget:self action:@selector(nextAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    [self.view bringSubviewToFront:button];
    
    
    apnsAlertView = [[CMApnsAlertView alloc] init];
    LiveFooterView * footerView = [LiveFooterView createLiveFooterView];
    SpecalMusicView * specalMusicView = [SpecalMusicView createSpecalView];

    [apnsAlertView setNext:footerView];
    [footerView setNext:specalMusicView];
    
}

- (void)nextAction{
    AlertViewType type = apnsAlertViewType;
    
    if (alertCount%3 == 0) {
        type = apnsAlertViewType;
    }else if (alertCount%3 == 1){
        type = liveFooterViewType;
    }else if (alertCount%3 == 2){
        type = specalMusicViewType;
    }
    alertCount++;
    [apnsAlertView handleMessage:[[AlertViewRequest alloc] initWithType:type]];
}

@end
