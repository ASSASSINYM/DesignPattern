//
//  GameCell.m
//  AdapterPatternDemo
//
//  Created by aron on 2017/5/22.
//  Copyright © 2017年 aron. All rights reserved.
//

#import "GameCell.h"
#import <Masonry.h>
#import "GameModel.h"
#import <UIImageView+WebCache.h>

@interface GameCell () {
    GameModel* _gameModel;
}

@property (nonatomic, weak) UIImageView* gameIconImageView;
@property (nonatomic, weak) UILabel* gameTitleLabel;
@property (nonatomic, weak) UILabel* gameTagLabel;
@property (nonatomic, weak) UILabel* gameRateLabel;

@end

@implementation GameCell

- (instancetype)init {
    self = [super init];
    if (self) {
        [self myInit];
    }
    return self;
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self myInit];
    }
    return self;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
}

- (void)myInit {
    UIImageView* gameIconImageView = [UIImageView new];
    gameIconImageView.backgroundColor = [UIColor redColor];
    gameIconImageView.contentMode = UIViewContentModeScaleAspectFill;
    gameIconImageView.layer.cornerRadius = 5;
    gameIconImageView.layer.masksToBounds = YES;
    [self.contentView addSubview:gameIconImageView];
    [gameIconImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.contentView).offset(84.1/3);
        make.top.equalTo(self.contentView).offset(27.1/3);
        make.bottom.equalTo(self.contentView).offset(-27.0/3);
        make.width.equalTo(@(183.0/3));
        make.height.equalTo(@(183.0/3)).priority(900);
    }];
    _gameIconImageView = gameIconImageView;
    
    
    UILabel* gameRateLabel = [UILabel new];
    gameRateLabel.numberOfLines = 1;
    gameRateLabel.text = @"9.3";
    gameRateLabel.textColor = [UIColor colorWithRed:0 green:130 blue:255 alpha:1];
    gameRateLabel.font = [UIFont systemFontOfSize:24];
    [self.contentView addSubview:gameRateLabel];
    _gameRateLabel = gameRateLabel;
    [_gameRateLabel setContentHuggingPriority:UILayoutPriorityDefaultHigh forAxis:UILayoutConstraintAxisHorizontal];
    [_gameRateLabel setContentCompressionResistancePriority:UILayoutPriorityDefaultHigh forAxis:UILayoutConstraintAxisHorizontal];
    [gameRateLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.contentView).offset(-78.0/3);
        make.top.equalTo(self.contentView).offset(45.0/3);
    }];
    
    
    UILabel* gameTitleLabel = [UILabel new];
    gameTitleLabel.numberOfLines = 1;
    gameTitleLabel.text = @"Star Trek Star Trek Star Trek Star Trek Star Trek ";
    gameTitleLabel.font = [UIFont systemFontOfSize:16];
    gameTitleLabel.textColor = [UIColor blackColor];
    [self.contentView addSubview:gameTitleLabel];
    _gameTitleLabel = gameTitleLabel;
    [_gameTitleLabel setContentHuggingPriority:UILayoutPriorityDefaultLow forAxis:UILayoutConstraintAxisHorizontal];
    [_gameTitleLabel setContentCompressionResistancePriority:UILayoutPriorityDefaultLow forAxis:UILayoutConstraintAxisHorizontal];
    [gameTitleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(_gameIconImageView.mas_right).offset(48.0/3);
        make.top.equalTo(_gameIconImageView).offset(21.0/3);
        make.right.equalTo(_gameRateLabel.mas_left).offset(-55.0/3);
    }];
    
    UILabel* gameTagLabel = [UILabel new];
    gameTagLabel.numberOfLines = 1;
    gameTagLabel.text = @"Category:MMOPRG";
    gameTagLabel.font = [UIFont systemFontOfSize:14];
    gameTagLabel.textColor = [UIColor lightGrayColor];
    [self.contentView addSubview:gameTagLabel];
    _gameTagLabel = gameTagLabel;
    [_gameTagLabel setContentHuggingPriority:UILayoutPriorityDefaultHigh forAxis:UILayoutConstraintAxisHorizontal];
    [gameTagLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(_gameIconImageView.mas_right).offset(48.0/3);
        make.bottom.equalTo(_gameIconImageView).offset(-21.0/3);
    }];
    
    UIView* sepLine = [UIView new];
    sepLine.backgroundColor = [UIColor lightGrayColor];
    [self.contentView addSubview:sepLine];
    [sepLine mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.contentView).offset(54.0/3);
        make.right.equalTo(self.contentView).offset(-54.0/3);
        make.bottom.equalTo(self.contentView);
        make.height.equalTo(@(1));
    }];
    
    
//    gameTagLabel.alpha = 0;
//    gameRateLabel.alpha = 0;
}

- (void)loadData:(id)data indexPath:(NSIndexPath *)indexPath {
    if ([data isKindOfClass:[GameModel class]]) {
        _gameModel = data;
        
        [_gameIconImageView sd_setImageWithURL:[NSURL URLWithString:_gameModel.image]];
        _gameTitleLabel.text = _gameModel.name;
        _gameTagLabel.text = [NSString stringWithFormat:@"%@:%@", @"Category", _gameModel.category];
        _gameRateLabel.text = [NSString stringWithFormat:@"%@", @(_gameModel.point)];
    }
}

@end
