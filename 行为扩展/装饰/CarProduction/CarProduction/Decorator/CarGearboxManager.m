//
//  CarGearboxManager.m
//  CarProduction
//
//  Created by mac on 2018/9/20.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import "CarGearboxManager.h"

@implementation CarGearboxManager

- (void)setupGearbox {
    NSLog(@"安装8速手自一体变速箱");
}

- (void)production {
    [super production];
    [self setupGearbox];
}

@end
