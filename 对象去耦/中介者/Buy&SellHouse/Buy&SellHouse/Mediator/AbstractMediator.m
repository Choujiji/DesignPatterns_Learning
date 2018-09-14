//
//  AbstractMediator.m
//  Buy&SellHouse
//
//  Created by mac on 2018/9/14.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import "AbstractMediator.h"

@implementation AbstractMediator

- (instancetype)init {
    if (self = [super init]) {
        _principalList = [[NSMutableArray alloc] initWithCapacity:10];
    }
    return self;
}

- (void)savePrincipalInfo:(AbstractColleague *)principal {
    [self.principalList addObject:principal];
}

@end
