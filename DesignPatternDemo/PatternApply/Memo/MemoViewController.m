//
//  MemoViewController.m
//  DesignPatternDemo
//
//  Created by wupeng on 2019/10/24.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "MemoViewController.h"
#import "TextViewCaretaker.h"
#import "TextViewChangeModel.h"
#import "MemoTextView.h"

@interface MemoViewController ()<UITextViewDelegate>
{
    TextViewCaretaker * _caretabker;
}

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
    
    _resetButton = [UIButton buttonWithType:UIButtonTypeCustom];
    _resetButton.frame = CGRectMake(self.view.frame.size.width-100, _textView.frame.origin.y+_textView.frame.size.height+50, 80, 40);
    [_resetButton setBackgroundColor:[UIColor grayColor]];
    [_resetButton setTitle:@"恢复" forState:UIControlStateNormal];
    [_resetButton addTarget:self action:@selector(resetAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_resetButton];
    
    _caretabker = [TextViewCaretaker new];
}

//恢复
- (void)resetAction{
    TextViewChangeModel * preChangeModel = [_caretabker restoreChangeModel];
    self.textView.text = preChangeModel.text;
}

//发生变化时存储
- (void)textViewDidChange:(UITextView *)textView{
    TextViewChangeModel * changeModel = [[TextViewChangeModel alloc] initWithText:textView.text replaceText:@""];
    [_caretabker textChangeWithChangeModel:changeModel];
}

@end
