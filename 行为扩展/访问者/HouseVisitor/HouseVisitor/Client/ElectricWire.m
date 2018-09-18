//
//  ElectricWire.m
//  HouseVisitor
//
//  Created by mac on 2018/9/18.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import "ElectricWire.h"
#import "ContractorProtocol.h"

@implementation ElectricWire

- (void)applyFixingWithVisitor:(id<ContractorProtocol>)visitor {
    // visitor配置电路(访问者进行实际操作)
    [visitor configElectricToClient:self];
}

@end
