//
//  ServiceManagement.m
//  BuyCar
//
//  Created by mac on 2018/9/13.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import "ServiceManagement.h"

@implementation ServiceManagement

- (void)buyInsurance {
    NSLog(@"%@：买保险~", self.className);
}

- (void)installFenderGuard {
    NSLog(@"%@：安装保险杠~", self.className);
}

- (void)installLicenseTag {
    NSLog(@"%@：上牌照", self.className);
}

@end
