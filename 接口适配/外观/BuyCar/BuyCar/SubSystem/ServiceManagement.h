//
//  ServiceManagement.h
//  BuyCar
//
//  Created by mac on 2018/9/13.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ServiceManagement : NSObject

/** 上保险 */
- (void)buyInsurance;

/** 安装保险杠 */
- (void)installFenderGuard;

/** 上牌照 */
- (void)installLicenseTag;
@end
