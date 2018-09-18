//
//  House.h
//  HouseVisitor
//
//  Created by mac on 2018/9/18.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FixableProtocol.h"
@class ElectricWire, Pipeline;

/** 组合对象的整体类 */
@interface House : NSObject <FixableProtocol>

- (instancetype)initHouseWithElectricWireInfo:(NSArray<ElectricWire *> *)electricWireInfo
                            pipelineInfo:(NSArray<Pipeline *> *)pipelineInfo;

@end
