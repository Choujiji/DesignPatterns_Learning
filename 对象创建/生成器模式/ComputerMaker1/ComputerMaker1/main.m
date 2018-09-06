//
//  main.m
//  ComputerMaker1
//
//  Created by mac on 2018/9/6.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Computer.h"
#import "ComputerSeller.h"
#import "AppleComputerMaker.h"
#import "LenovoComputerMaker.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 电脑销售商（Director）
        ComputerSeller *seller = [[ComputerSeller alloc] init];
        
        // 买一台苹果电脑（Director调用Builder生产并返回）
        Computer *appleComputer = [seller getComputerFromMaker:[AppleComputerMaker new]];
        NSLog(@"新电脑：\n%@", appleComputer.description);
        
        // 买一台联想电脑
        Computer *lenovoComputer = [seller getComputerFromMaker:[LenovoComputerMaker new]];
        NSLog(@"新电脑：\n%@", lenovoComputer.description);
    }
    return 0;
}
