//
//  SSSSSeller.m
//  BuyCar
//
//  Created by mac on 2018/9/13.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import "SSSSSeller.h"
#import "FinacialManagement.h"
#import "CarManagement.h"
#import "ServiceManagement.h"

@interface SSSSSeller ()

@property (strong, nonatomic) FinacialManagement *finacialManagement;

@property (strong, nonatomic) CarManagement *carManagement;

@property (strong, nonatomic) ServiceManagement *serviceManagement;

@end

@implementation SSSSSeller

- (instancetype)init {
    if (self = [super init]) {
        _finacialManagement = [[FinacialManagement alloc] init];
        _carManagement = [[CarManagement alloc] init];
        _serviceManagement = [[ServiceManagement alloc] init];
    }
    return self;
}

- (void)buyCarWithType:(BuyCarType)type {
    if (type == BuyCarTypeCrash) {
        // 现金买车
        
        // 付款
        [self.finacialManagement payWithCrash];
        // 提供车、保险杠
        [self.carManagement provideCar];
        [self.carManagement provideFenderGuard];
        // 上保险、安保险杠、牌照
        [self.serviceManagement buyInsurance];
        [self.serviceManagement installFenderGuard];
        [self.serviceManagement installLicenseTag];
    } else {
        // 贷款买车
        
        // 贷款相关
        [self.finacialManagement applyLoans];
        if (![self.finacialManagement auditLoans]) {
            NSLog(@"%@：贷款审核失败~", self.className);
            return;
        }
        [self.finacialManagement makeLoans];
        // 提供车、保险杠
        [self.carManagement provideCar];
        [self.carManagement provideFenderGuard];
        // 上保险、安保险杠、牌照
        [self.serviceManagement buyInsurance];
        [self.serviceManagement installFenderGuard];
        [self.serviceManagement installLicenseTag];
    }
}

@end
