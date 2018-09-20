//
//  ProductionCar.m
//  CarProduction
//
//  Created by mac on 2018/9/20.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import "ProductionCar.h"

@implementation ProductionCar

- (instancetype)init {
    if (self = [super init]) {
        self.chassis = @"非承载式底盘";
    }
    return self;
}

- (void)production {
    NSLog(@"汽车底盘：%@", self.chassis);
}


@end
