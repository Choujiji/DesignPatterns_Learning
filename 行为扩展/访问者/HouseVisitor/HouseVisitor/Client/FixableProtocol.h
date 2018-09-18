//
//  FixableProtocol.h
//  HouseVisitor
//
//  Created by mac on 2018/9/18.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ContractorProtocol.h"

@protocol FixableProtocol <NSObject>

/** 请求visitor进行维修 */
- (void)applyFixingWithVisitor:(id<ContractorProtocol>)visitor;

@end
