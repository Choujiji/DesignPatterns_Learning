//
//  ContractorProtocol.h
//  HouseVisitor
//
//  Created by mac on 2018/9/18.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import <Foundation/Foundation.h>
@class ElectricWire, Pipeline;

/** 定义访问者功能协议（用于扩展类的功能集合） */
@protocol ContractorProtocol <NSObject>

/** 为管道模块配置管道 */
- (void)configPipelineToClient:(Pipeline *)client;

/** 为电路模块配置电路 */
- (void)configElectricToClient:(ElectricWire *)client;

@end
