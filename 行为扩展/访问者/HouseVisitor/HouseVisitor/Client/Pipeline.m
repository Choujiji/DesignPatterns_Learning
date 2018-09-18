//
//  Pipeline.m
//  HouseVisitor
//
//  Created by mac on 2018/9/18.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import "Pipeline.h"

@implementation Pipeline

- (void)applyFixingWithVisitor:(id<ContractorProtocol>)visitor {
    // visitor配置管道(访问者进行实际操作)
    [visitor configPipelineToClient:self];
}

@end
