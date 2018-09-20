//
//  CarBaseManager.m
//  CarProduction
//
//  Created by mac on 2018/9/20.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import "CarBaseManager.h"

@implementation CarBaseManager

- (instancetype)initWithBaseCar:(id<CarBase>)baseCar {
    if (self = [super init]) {
        self.baseCar = baseCar;
    }
    return self;
}

- (void)production {
    // 调用原类功能
    [self.baseCar production];
}


@end
