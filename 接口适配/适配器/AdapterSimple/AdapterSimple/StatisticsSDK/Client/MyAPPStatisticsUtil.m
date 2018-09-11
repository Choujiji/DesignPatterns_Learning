//
//  MyAPPStatisticsUtil.m
//  AdapterSimple
//
//  Created by mac on 2018/9/11.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import "MyAPPStatisticsUtil.h"

static MyAPPStatisticsUtil *instance = nil;

@implementation MyAPPStatisticsUtil

#pragma mark - 单例创建
+ (MyAPPStatisticsUtil *)sharedStatistics {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[super allocWithZone:NULL] init];
    });
    return instance;
}

+ (MyAPPStatisticsUtil *)sharedStatisticsWithType:(id<APPStatisticsSDKProtocol>)type {
    MyAPPStatisticsUtil *instance = [self sharedStatistics];
    instance.delegate = type;
    return instance;
}

+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    return [MyAPPStatisticsUtil sharedStatistics];
}

- (instancetype)copy {
    return instance;
}

- (instancetype)mutableCopy {
    return instance;
}

#pragma mark - 实例方法
- (void)startAPP {
    [self.delegate startAPP];
}

- (void)endAPP {
    [self.delegate endAPP];
}

- (void)onEnterPage:(NSString *)page {
    [self.delegate onEnterPage:page];
}

- (void)onExitPage:(NSString *)page {
    [self.delegate onExitPage:page];
}
@end
