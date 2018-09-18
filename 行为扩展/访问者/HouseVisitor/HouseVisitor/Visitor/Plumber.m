//
//  Plumber.m
//  HouseVisitor
//
//  Created by mac on 2018/9/18.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import "Plumber.h"

@implementation Plumber

- (void)configPipelineToClient:(Pipeline *)client {
    // 管道工只实现自己的功能
    NSLog(@"管道工%@ 正在抢修管道%@", self, client);
}

- (void)configElectricToClient:(ElectricWire *)client {
    NSLog(@"管道工%@ 不会修电路", self);
}

@end
