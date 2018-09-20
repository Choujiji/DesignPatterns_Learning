//
//  main.m
//  CarProduction
//
//  Created by mac on 2018/9/20.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ProductionCar.h"
#import "CarEngineManager.h"
#import "CarGearboxManager.h"
#import "CarWheelManager.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 底盘汽车
        ProductionCar *car = [[ProductionCar alloc] init];
        // 配置发动机
        CarEngineManager *engine = [[CarEngineManager alloc] initWithBaseCar:car];
        // 配置变速箱
        CarGearboxManager *gearbox = [[CarGearboxManager alloc] initWithBaseCar:engine];
        // 配置悬挂轮胎
        CarWheelManager *wheel = [[CarWheelManager alloc] initWithBaseCar:gearbox];
        
        // 开始生产
        [wheel production];
    }
    return 0;
}
