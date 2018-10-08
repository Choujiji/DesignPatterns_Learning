//
//  Car.h
//  MementoLearning
//
//  Created by mac on 2018/10/8.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MementoProtocol.h"

/**
 汽车（遵循保存协议的类，Originator，可以设置保存自己多少状态）
 */
@interface Car : NSObject <MementoProtocol>

/**
 品牌
 */
@property (copy, nonatomic) NSString *brand;

/**
 型号
 */
@property (copy, nonatomic) NSString *model;

- (void)display;

@end
