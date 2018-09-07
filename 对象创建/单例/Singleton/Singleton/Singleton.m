//
//  Singleton.m
//  Singleton
//
//  Created by mac on 2018/9/7.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import "Singleton.h"

static Singleton *instance = nil;

@implementation Singleton

//+ (Singleton *)getInstance {
//    // 此入口可以保证返回同一个对象，但是由于使用其他接口（alloc init或copy multableCopy等，可以创建额外对象）
//    static dispatch_once_t onceToken;
//    dispatch_once(&onceToken, ^{
//        instance = [[Singleton alloc] init];
//    });
//    return instance;
//}

+ (Singleton *)getInstance {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        // 由于子类已经覆盖allocWithZone方法，这里只能通过父类开辟空间并实例化
        instance = [[super allocWithZone:NULL] init];
    });
    return instance;
}

+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    // 由于alloc方法会调用allocWithZone，防止外部直接调用此方法或者alloc开辟新的内存空间，覆盖此方法
    return [self getInstance];
}

- (instancetype)copy {
    // 默认copy方法会调用copyWithZone进行新的实例创建，覆盖
//    return [[self class] getInstance];
    return instance; // 这样就可以了，实例方法嘛~
}

- (instancetype)mutableCopy {
    // 默认copy方法会调用mutableCopyWithZone进行新的实例创建，覆盖
//    return [[self class] getInstance];
    return instance;
}





@end
