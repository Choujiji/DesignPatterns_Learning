//
//  main.m
//  Singleton
//
//  Created by mac on 2018/9/7.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Singleton.h"
#import "ChildSingleton.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Singleton *instance = [Singleton getInstance];
        
        Singleton *instance2 = [Singleton getInstance];

        Singleton *instance3 = [[Singleton alloc] init];
        
        Singleton *instance4 = [[Singleton allocWithZone:NULL] init];
        
        Singleton *instance5 = [instance copy];

        
        NSLog(@"%@\n%@\n%@\n%@\n%@", instance, instance2, instance3, instance4, instance5);
        
            // 注意：这里最终得到的是父类Singleton的实例（由于getInstance内部是Singleton的实例创建，里面的那个[super allocWithZone:nil]调用也一样，最终都是Singleton在实例化）
        ChildSingleton *childInstance = [ChildSingleton getInstance];
        ChildSingleton *chileInstance2 = [[ChildSingleton alloc] init];
        NSLog(@"%@\n%@", childInstance, chileInstance2);
    }
    return 0;
}
