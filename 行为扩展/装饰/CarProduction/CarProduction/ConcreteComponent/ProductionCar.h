//
//  ProductionCar.h
//  CarProduction
//
//  Created by mac on 2018/9/20.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CarBase.h"

@interface ProductionCar : NSObject <CarBase>

/** 底盘 */
@property (copy, nonatomic) NSString *chassis;

@end
