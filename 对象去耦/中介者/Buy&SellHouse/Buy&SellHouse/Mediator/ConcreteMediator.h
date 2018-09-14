//
//  ConcreteMediator.h
//  Buy&SellHouse
//
//  Created by mac on 2018/9/14.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import "AbstractMediator.h"
@class Buyer;

@interface ConcreteMediator : AbstractMediator

/** 为买家匹配房子 */
- (void)matchingHouseForBuyer:(Buyer *)buyer;

@end
