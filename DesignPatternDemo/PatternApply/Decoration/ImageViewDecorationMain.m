//
//  ImageViewDecorationMain.m
//  DesignPatternDemo
//
//  Created by wupeng on 2020/2/21.
//  Copyright © 2020 wupeng. All rights reserved.
//

#import "ImageViewDecorationMain.h"
#import <UIKit/UIKit.h>
#import "ImageView1Decoration.h"
#import "ImageView2Decoration.h"

@implementation ImageViewDecorationMain

+ (void)main{
    UIImageView * imageView = [[UIImageView alloc] init];
    imageView = [[ImageView1Decoration alloc] initWithImageView:imageView];
    imageView = [[ImageView2Decoration alloc] initWithImageView:imageView];
    imageView.image = [UIImage imageNamed:@"aa"];
}

@end
