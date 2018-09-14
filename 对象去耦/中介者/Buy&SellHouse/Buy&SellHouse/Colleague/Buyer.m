//
//  Buyer.m
//  Buy&SellHouse
//
//  Created by mac on 2018/9/14.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import "Buyer.h"
#import "ConcreteMediator.h"

@implementation Buyer

- (void)buyHourse {
    ConcreteMediator *mediator = (ConcreteMediator *)self.mediator;
    // 匹配房子
    [mediator matchingHouseForBuyer:self];
}

@end
