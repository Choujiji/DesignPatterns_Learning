//
//  FinacialManagement.m
//  BuyCar
//
//  Created by mac on 2018/9/13.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import "FinacialManagement.h"


@implementation FinacialManagement

- (void)payWithCrash {
    NSLog(@"%@：现金支付~", self.className);
}

- (void)applyLoans {
    NSLog(@"%@：申请贷款~", self.className);
}

- (BOOL)auditLoans {
    NSLog(@"%@：审核中...", self.className);
    return YES;
}

- (void)makeLoans {
    NSLog(@"%@：审核通过，放款！", self.className);
}

@end
