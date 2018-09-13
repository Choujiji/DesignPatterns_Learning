//
//  CarManagement.m
//  BuyCar
//
//  Created by mac on 2018/9/13.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import "CarManagement.h"

@implementation CarManagement

- (void)provideCar {
    NSLog(@"%@：提供汽车~", self.className);
}

/** 提供保险杠 */
- (void)provideFenderGuard {
    NSLog(@"%@：提供保险杠~", self.className);
}

@end
