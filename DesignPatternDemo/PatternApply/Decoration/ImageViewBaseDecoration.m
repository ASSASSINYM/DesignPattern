//
//  ImageDecoration.m
//  DesignPatternDemo
//
//  Created by wupeng on 2020/2/21.
//  Copyright © 2020 wupeng. All rights reserved.
//

#import "ImageViewBaseDecoration.h"
#import <UIKit/UIKit.h>
@interface ImageViewBaseDecoration()
@end

@implementation ImageViewBaseDecoration

- (instancetype)initWithImageView:(UIImageView *)imageView{
    self = [super init];
    if (self) {
        _imageView = imageView;
    }
    return self;
}

- (void)setImage:(UIImage *)image{
    [super setImage:image];
    self.imageView.image = image;
}

@end
