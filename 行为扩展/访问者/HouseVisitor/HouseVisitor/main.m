//
//  main.m
//  HouseVisitor
//
//  Created by mac on 2018/9/18.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import <Foundation/Foundation.h>
// client
#import "House.h"
#import "ElectricWire.h"
#import "Pipeline.h"
// visitor
#import "Electrician.h"
#import "Plumber.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 线路
        ElectricWire *elecWire1 = [[ElectricWire alloc] init];
        ElectricWire *elecWire2 = [[ElectricWire alloc] init];
        ElectricWire *elecWire3 = [[ElectricWire alloc] init];
        NSArray *elecWireInfo = @[elecWire1, elecWire2, elecWire3];
        // 管道
        Pipeline *pipe1 = [[Pipeline alloc] init];
        Pipeline *pipe2 = [[Pipeline alloc] init];
        Pipeline *pipe3 = [[Pipeline alloc] init];
        NSArray *pipeInfo = @[pipe1, pipe2, pipe3];

        // 创建房子组合对象
        House *house = [[House alloc] initHouseWithElectricWireInfo:elecWireInfo pipelineInfo:pipeInfo];
        
        // 创建电工并维修房屋
        Electrician *electrician = [[Electrician alloc] init];
        [house applyFixingWithVisitor:electrician];
        
        // 创建管道工并维修管道
        Plumber *plumber = [[Plumber alloc] init];
        [house applyFixingWithVisitor:plumber];
        
    }
    return 0;
}
