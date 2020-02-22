//
//  ImageView2Decoration.m
//  DesignPatternDemo
//
//  Created by wupeng on 2020/2/21.
//  Copyright © 2020 wupeng. All rights reserved.
//

#import "ImageView2Decoration.h"

@implementation ImageView2Decoration

- (instancetype)initWithImageView:(UIImageView *)imageView{
    self = [super initWithImageView:imageView];
    return self;
}

- (void)setImage:(UIImage *)image{
    [super setImage:image];
    NSLog(@"我是装饰模式2");
}

@end
