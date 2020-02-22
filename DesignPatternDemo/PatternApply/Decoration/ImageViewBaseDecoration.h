//
//  ImageDecoration.h
//  DesignPatternDemo
//
//  Created by wupeng on 2020/2/21.
//  Copyright © 2020 wupeng. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ImageViewBaseDecoration : UIImageView
@property (nonatomic,strong) UIImageView * imageView;

- (instancetype)initWithImageView:(UIImageView *)imageView;
@end

NS_ASSUME_NONNULL_END
