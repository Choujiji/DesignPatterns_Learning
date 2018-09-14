//
//  main.m
//  Buy&SellHouse
//
//  Created by mac on 2018/9/14.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Buyer.h"
#import "Seller.h"
#import "ConcreteMediator.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        ConcreteMediator *mediator = [[ConcreteMediator alloc] init];
        mediator.name = @"链家";
        
        // 买家
        Buyer *jiji = [[Buyer alloc] init];
        jiji.name = @"臭吉吉";
        jiji.money = 1000000;
        [jiji entrustToMediator:mediator]; // 委托中介
        [mediator savePrincipalInfo:jiji]; // 中介记录
        
        // 卖家1
        Seller *seller1 = [[Seller alloc] init];
        seller1.name = @"二货卖家";
        seller1.price = 500000;
        [seller1 entrustToMediator:mediator]; // 委托中介
        [mediator savePrincipalInfo:seller1]; // 中介记录

        // 卖家2
        Seller *seller2 = [[Seller alloc] init];
        seller2.name = @"奸商卖家";
        seller2.price = 5000000;
        [seller2 entrustToMediator:mediator]; // 委托中介
        [mediator savePrincipalInfo:seller2]; // 中介记录
        
        // 中介匹配房源
        [mediator matchingHouseForBuyer:jiji];
    }
    return 0;
}
