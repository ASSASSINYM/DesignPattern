//
//  Bridge.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/13.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "BridgeMain.h"
#import "HouseCrop.h"
#import "ClothesCrop.h"
#import "House.h"
#import "IPod.h"
#import "IPodCrop.h"
#import "Clothes.h"

@implementation BridgeMain
/*
 产品有:衣服、ipod、房子
 生产产品公司有:服装厂、电子厂、房地产商
 现在要求是:服装厂能生产各种产品，电子厂能生产各种产品，房地产商能生产各种产品
 
 绘制:
 绘制矩形、圆形、椭圆、正方形
 不同的颜色，如红色、绿色、蓝色
 要求:各种图形需要不同的颜色
 */
- (void)main{

    House * house = [House new];
    IPod * ipod = [IPod new];
    Clothes * clothes = [Clothes new];

    HouseCrop * houseCrop = [[HouseCrop alloc] initWithProduct:ipod];
    [houseCrop makeMoney];
    
    IPodCrop * ipodCrop = [[IPodCrop alloc] initWithProduct:house];
    [ipodCrop makeMoney];
    
    ClothesCrop * clothesCrop = [[ClothesCrop alloc] initWithProduct:clothes];
    [clothesCrop makeMoney];
}

@end
