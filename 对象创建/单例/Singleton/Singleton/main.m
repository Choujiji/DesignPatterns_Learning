//
//  main.m
//  Singleton
//
//  Created by mac on 2018/9/7.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Singleton.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Singleton *instance = [Singleton getInstance];
        
        Singleton *instance2 = [Singleton getInstance];

        Singleton *instance3 = [[Singleton alloc] init];
        
        Singleton *instance4 = [[Singleton allocWithZone:NULL] init];
        
        Singleton *instance5 = [instance copy];

        
        NSLog(@"%@\n%@\n%@\n%@\n%@", instance, instance2, instance3, instance4, instance5);
    }
    return 0;
}
