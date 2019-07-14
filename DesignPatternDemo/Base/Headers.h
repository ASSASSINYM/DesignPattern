//
//  Headers.h
//  DesignPatternDemo
//
//  Created by wupeng on 2019/7/14.
//  Copyright © 2019年 wupeng. All rights reserved.
//

#import <Foundation/Foundation.h>

#define HEX_COLOR(hexValue) [UIColor colorWithRed:((float)((hexValue & 0xFF0000) >> 16))/255.0 green:((float)((hexValue & 0xFF00) >> 8))/255.0 blue:((float)(hexValue & 0xFF))/255.0 alpha:1.0]

