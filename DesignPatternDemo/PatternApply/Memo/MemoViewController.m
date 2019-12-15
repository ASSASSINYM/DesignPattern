//
//  MemoViewController.m
//  DesignPatternDemo
//
//  Created by wupeng on 2019/10/24.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "MemoViewController.h"
#import "WPTextViewBackoutManager.h"
#import "WPTextViewChangeModel.h"
#import "MemoTextView.h"

@interface MemoViewController ()<UITextViewDelegate>

@property (nonatomic,strong) MemoTextView * textView;
@property (nonatomic,strong) UIButton * resetButton;
@end

@implementation MemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    _textView = [[MemoTextView alloc] initWithFrame:CGRectMake(20, 100, self.view.frame.size.width-40, 60)];
    _textView.backgroundColor = [UIColor grayColor];
    _textView.delegate = self;
    _textView.font = [UIFont systemFontOfSize:17];
    [self.view addSubview:_textView];
    
}

@end
