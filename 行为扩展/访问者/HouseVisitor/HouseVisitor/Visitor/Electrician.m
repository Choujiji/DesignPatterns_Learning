//
//  Electrician.m
//  HouseVisitor
//
//  Created by mac on 2018/9/18.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import "Electrician.h"

@implementation Electrician

- (void)configPipelineToClient:(Pipeline *)client {
    NSLog(@"电工%@ 不会修管道", self);
}

- (void)configElectricToClient:(ElectricWire *)client {
    // 电工只实现自己的功能
    NSLog(@"电工%@ 正在抢修电线%@", self, client);
}

@end
