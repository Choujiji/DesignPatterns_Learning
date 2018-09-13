//
//  FinacialManagement.h
//  BuyCar
//
//  Created by mac on 2018/9/13.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FinacialManagement : NSObject

/** 现金付款 */
- (void)payWithCrash;

/** 申请贷款 */
- (void)applyLoans;

/** 审核 */
- (BOOL)auditLoans;

/** 放款 */
- (void)makeLoans;

@end
