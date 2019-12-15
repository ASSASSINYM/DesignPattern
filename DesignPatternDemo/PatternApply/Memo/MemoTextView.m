//
//  MemoTextView.m
//  DesignPatternDemo
//
//  Created by wupeng on 2019/10/24.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "MemoTextView.h"
#import "WPTextViewBackoutManager.h"
#import "WPTextViewChangeModel.h"
@interface MemoTextView ()
@property (nonatomic,strong) WPTextViewBackoutManager * caretabker;
@end

@implementation MemoTextView

#pragma mark - 初始化

- (instancetype)init{
    self = [super init];
    if (self) {
        [self setUp];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        [self setUp];
    }
    return self;
}

- (void)awakeFromNib{
    [super awakeFromNib];
    [self setUp];
}

- (void)setUp{
    _caretabker = [WPTextViewBackoutManager new];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(textViewDidChange:) name:UITextViewTextDidChangeNotification object:nil];
    self.inputAccessoryView = [self createToolBar];
}

#pragma mark - 撤销

- (UIToolbar*)createToolBar
{
    UIToolbar *toolBar = [UIToolbar new];
    [toolBar sizeToFit];
    UIBarButtonItem *spaceItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
    UIBarButtonItem *backoutItem = [[UIBarButtonItem alloc]initWithTitle:NSLocalizedString(@"撤销", nil) style:UIBarButtonItemStyleDone target:self action:@selector(textViewBackoutAction)];
    
    toolBar.items = @[spaceItem, backoutItem];
    return toolBar;
}

- (void)textViewBackoutAction{
    WPTextViewChangeModel * preChangeModel = [_caretabker restoreChangeModel];
    self.text = preChangeModel.text;
}

- (void)textViewDidChange:(NSNotification *)notification{
    WPTextViewChangeModel * changeModel = [[WPTextViewChangeModel alloc] initWithText:self.text];
    [_caretabker textChangeWithChangeModel:changeModel];
}

#pragma mark - dealloc

- (void)dealloc{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

@end
