//
//  Car.m
//  MementoLearning
//
//  Created by mac on 2018/10/8.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import "Car.h"

static NSString * const kBrandSaveKey = @"kBrandSaveKey";
static NSString * const kModelSaveKey = @"kModelSaveKey";


@implementation Car

- (void)display {
    NSLog(@"品牌：%@，型号：%@", self.brand, self.model);
}

#pragma mark - MementoProtocol method
- (id)currentState {
    // 提供给存储中心的保存数据对象
    return @{
             kBrandSaveKey: self.brand,
             kModelSaveKey: self.model
             };
}

- (void)recoverFromState:(id)state {
    // 从数据中心读取到的数据对象，进行恢复
    NSDictionary *stateInfo = (NSDictionary *)state;
    self.brand = stateInfo[kBrandSaveKey];
    self.model = stateInfo[kModelSaveKey];
}

@end
