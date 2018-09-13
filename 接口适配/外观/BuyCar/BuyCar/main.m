//
//  main.m
//  BuyCar
//
//  Created by mac on 2018/9/13.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SSSSSeller.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        SSSSSeller *seller = [[SSSSSeller alloc] init];
        // 贷款买车
        [seller buyCarWithType:BuyCarTypeLoans];
        NSLog(@"=====================");
        // 全款买车
        [seller buyCarWithType:BuyCarTypeCrash];
    }
    return 0;
}
