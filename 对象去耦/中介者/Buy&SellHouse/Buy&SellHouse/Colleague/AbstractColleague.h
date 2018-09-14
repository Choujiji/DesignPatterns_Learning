//
//  AbstractColleague.h
//  Buy&SellHouse
//
//  Created by mac on 2018/9/14.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import <Foundation/Foundation.h>
@class AbstractMediator;

@interface AbstractColleague : NSObject

/** 名称 */
@property (copy, nonatomic) NSString *name;

/** 中介者 */
@property (weak, nonatomic, readonly) AbstractMediator *mediator;

/** 设置委托 */
- (void)entrustToMediator:(AbstractMediator *)mediator;

@end
