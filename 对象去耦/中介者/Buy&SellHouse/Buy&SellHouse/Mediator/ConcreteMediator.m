//
//  ConcreteMediator.m
//  Buy&SellHouse
//
//  Created by mac on 2018/9/14.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import "ConcreteMediator.h"
#import "Seller.h"
#import "Buyer.h"

@implementation ConcreteMediator

- (void)matchingHouseForBuyer:(Buyer *)buyer {
    for (AbstractColleague *item in self.principalList) {
        if (![item isKindOfClass:[Seller class]]) {
            continue;
        }
        Seller *seller = (Seller *)item;
        if (seller.price > buyer.money) {
            NSLog(@"%@买不起%@的房", buyer.name, seller.name);
        } else {
            NSLog(@"%@可以买%@的房子~~~", buyer.name, seller.name);
        }
    }
}
@end
