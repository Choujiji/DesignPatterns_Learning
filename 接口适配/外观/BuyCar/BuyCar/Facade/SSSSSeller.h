//
//  SSSSSeller.h
//  BuyCar
//
//  Created by mac on 2018/9/13.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, BuyCarType) {
    BuyCarTypeCrash,
    BuyCarTypeLoans
};

/** 外观模式入口，提供Client外部接口，隐藏子系统相关类，解耦 */
@interface SSSSSeller : NSObject

- (void)buyCarWithType:(BuyCarType)type;

@end
