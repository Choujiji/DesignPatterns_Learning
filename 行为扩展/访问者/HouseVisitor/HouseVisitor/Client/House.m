//
//  House.m
//  HouseVisitor
//
//  Created by mac on 2018/9/18.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import "House.h"
#import "ElectricWire.h"
#import "Pipeline.h"

@interface House ()

/** 电线数组 */
@property (strong, nonatomic) NSArray<ElectricWire *> *electricWireInfo;

/** 管道数组 */
@property (strong, nonatomic) NSArray<Pipeline *> *pipelineInfo;

@end

@implementation House

- (instancetype)initHouseWithElectricWireInfo:(NSArray<ElectricWire *> *)electricWireInfo
                                 pipelineInfo:(NSArray<Pipeline *> *)pipelineInfo {
    if (self = [super init]) {
        _electricWireInfo = electricWireInfo;
        _pipelineInfo = pipelineInfo;
    }
    return self;
}

- (void)applyFixingWithVisitor:(id<ContractorProtocol>)visitor {
    // 依次请求visitor维修电路
    for (ElectricWire *item in self.electricWireInfo) {
        [item applyFixingWithVisitor:visitor];
    }
    // 依次请求visitor维修管道
    for (Pipeline *item in self.pipelineInfo) {
        [item applyFixingWithVisitor:visitor];
    }
}

@end
