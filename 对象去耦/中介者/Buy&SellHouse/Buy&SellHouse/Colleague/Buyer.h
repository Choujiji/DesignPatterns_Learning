//
//  Buyer.h
//  Buy&SellHouse
//
//  Created by mac on 2018/9/14.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import "AbstractColleague.h"

/** 买家 */
@interface Buyer : AbstractColleague

/** 出价 */
@property (assign, nonatomic) NSInteger money;

/** 购买 */
- (void)buyHourse;

@end
