//
//  ImageView1Decoration.m
//  DesignPatternDemo
//
//  Created by wupeng on 2020/2/21.
//  Copyright © 2020 wupeng. All rights reserved.
//

#import "ImageView1Decoration.h"

@implementation ImageView1Decoration

- (instancetype)initWithImageView:(UIImageView *)imageView{
    self = [super initWithImageView:imageView];
    return self;
}

- (void)setImage:(UIImage *)image{
    [super setImage:image];
    NSLog(@"我是装饰模式1");
}

@end
