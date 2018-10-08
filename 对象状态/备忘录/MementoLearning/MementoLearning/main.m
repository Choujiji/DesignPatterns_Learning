//
//  main.m
//  MementoLearning
//
//  Created by mac on 2018/10/8.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"
#import "MementoCenter.h"

static NSString * const kCarSavingKey = @"savedCar";

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Car *aCar = [[Car alloc] init];
        aCar.brand = @"现代";
        aCar.model = @"全新胜达";
        [aCar display];
        
        MementoCenter *center = [[MementoCenter alloc] init];
        // 保存数据
        [center saveMementoWithObj:aCar key:kCarSavingKey];
        
        // 修改数据
        aCar.brand = @"斯巴鲁";
        aCar.model = @"傲虎";
        [aCar display];
        
        // 还原数据
        id savedInfo = [center mementoObjectWithKey:kCarSavingKey];
        [aCar recoverFromState:savedInfo];
        [aCar display];
    }
    return 0;
}
