//
//  LSPMain.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/9.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "LSPMain.h"
#import "Solidier.h"
#import "Rifle.h"
#import "ToyGun.h"
@implementation LSPMain

- (void)main{
    Solidier * sanMao = [Solidier new];
    [sanMao setGun:[ToyGun new]];
    [sanMao killEnemy];
}

@end
