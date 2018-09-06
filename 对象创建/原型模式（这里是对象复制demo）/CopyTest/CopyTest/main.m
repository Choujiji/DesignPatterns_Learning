//
//  main.m
//  CopyTest
//
//  Created by mac on 2018/9/6.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Computer.h"
#import "Motherboard.h"
#import "OperationSystem.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Motherboard *motherboard = [[Motherboard alloc] init];
        motherboard.CPU = @"i7-9700";
        motherboard.GPU = @"1050Ti";
        motherboard.memory = @"16G";
        motherboard.storage = @"512G SSD";
        
        OperationSystem *OS1 = [[OperationSystem alloc] init];
        OS1.OSName = @"macOS";
        OS1.OSVersion = @"10.12.3";
        
        OperationSystem *OS2 = [[OperationSystem alloc] init];
        OS2.OSName = @"win10";
        OS2.OSVersion = @"2.7.5";
        
        Computer *computer = [[Computer alloc] init];
        computer.motherboard = motherboard;
        [computer addOperationSystem:OS1];
        [computer addOperationSystem:OS2];
        computer.screen = @"15.4 IPS";
        computer.keyboard = @"butterfly 2.0";
        computer.touchpad = @"multi-touch with force touch";
        computer.loudspeaker = @"2.0";
        
        NSLog(@"原始电脑：%@", computer);
        
        Computer *computerCopy = [computer copy];
        NSLog(@"复制电脑：%@", computerCopy);
        
        computerCopy.screen = @"27.5 OLED 4k";
        
        NSLog(@"复制电脑：%@", computerCopy);

    }
    return 0;
}
