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

- (void)main{
//    HouseCrop * houseCrop = [HouseCrop new];
//    [houseCrop makeMoney];
//
//    ClothesCrop * clothesCrop = [ClothesCrop new];
//    [clothesCrop makeMoney];
    House * house = [House new];
    HouseCrop * houseCrop = [[HouseCrop alloc] initWithProduct:house];
    [houseCrop makeMoney];
    
    IPod * ipod = [IPod new];
    IPodCrop * ipodCrop = [[IPodCrop alloc] initWithProduct:ipod];
    [ipodCrop makeMoney];
    
    Clothes * clothes = [Clothes new];
    ClothesCrop * clothesCrop = [[ClothesCrop alloc] initWithProduct:clothes];
    [clothesCrop makeMoney];
}

@end
