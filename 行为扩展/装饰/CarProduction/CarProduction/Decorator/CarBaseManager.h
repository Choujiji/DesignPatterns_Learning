//
//  CarBaseManager.h
//  CarProduction
//
//  Created by mac on 2018/9/20.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CarBase.h"

@interface CarBaseManager : NSObject <CarBase>

@property (strong, nonatomic) id<CarBase> baseCar;

- (instancetype)initWithBaseCar:(id<CarBase>)baseCar;

@end
