//
//  AbstractMediator.h
//  Buy&SellHouse
//
//  Created by mac on 2018/9/14.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import <Foundation/Foundation.h>
@class AbstractColleague;

/** 中介抽象类 */
@interface AbstractMediator : NSObject

/** 中介名称 */
@property (copy, nonatomic) NSString *name;
/** 委托人列表信息 */
@property (copy, nonatomic, readonly) NSMutableArray<AbstractColleague *> *principalList;

/** 记录委托人信息 */
- (void)savePrincipalInfo:(AbstractColleague *)principal;

@end
