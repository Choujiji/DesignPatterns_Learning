//
//  Router.m
//  RouterTest
//
//  Created by mac on 2018/9/14.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import "Router.h"
#import <objc/runtime.h>

static Router *routerInstance = nil;

static NSString * const kClassNamePostfix = @"ViewController";

static NSString * const kRouterURLPrefix = @"router://";

@implementation Router

#pragma mark - 初始化
+ (Router *)sharedRouter {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        routerInstance = [[super allocWithZone:nil] init];
    });
    return routerInstance;
}

+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    return [self sharedRouter];
}

- (instancetype)copy {
    return routerInstance;
}

- (instancetype)mutableCopy {
    return routerInstance;
}

#pragma mark - public API
+ (NSString *)routerURLPrefix {
    return kRouterURLPrefix;
}
+ (NSString *)classNamePostfix {
    return kClassNamePostfix;
}

+ (void)openURL:(NSString *)routerURL {
    if (!routerInstance.defaultTargetCompletion) {
        NSLog(@"Warning: missing defaultTargetCompletion!!!");
        return;
    }
    UIViewController *targetVC = [self loadTargetViewControllerWithURL:routerURL];
    
    routerInstance.defaultTargetCompletion(targetVC, nil);
}

+ (void)openURL:(NSString *)routerURL params:(NSDictionary *)params {
    if (!routerInstance.defaultTargetCompletion) {
        NSLog(@"Warning: missing defaultTargetCompletion!!!");
        return;
    }
    UIViewController *targetVC = [self loadTargetViewControllerWithURL:routerURL];
    targetVC.routerParams = params;
    
    routerInstance.defaultTargetCompletion(targetVC, params);
}

+ (void)openURL:(NSString *)routerURL params:(NSDictionary *)params targetCompletion:(RouterTargetCompletion)completion {
    UIViewController *targetVC = [self loadTargetViewControllerWithURL:routerURL];
    targetVC.routerParams = params;
    if (!completion) {
        if (!routerInstance.defaultTargetCompletion) {
            NSLog(@"Warning: missing defaultTargetCompletion!!!");
            return;
        }
    }
    completion(targetVC, params);
}

#pragma mark - private API
+ (UIViewController *)loadTargetViewControllerWithURL:(NSString *)routerURL {
    if (![routerURL hasPrefix:kRouterURLPrefix]) {
        // 没有默认前缀
        return nil;
    }
    if (![routerURL containsString:kClassNamePostfix]) {
        // 没有指定类的后缀
        return nil;
    }
    // 获取类名
    Class class = [self getClassWithURL:routerURL];
    if (!class) {
        // 不存在此类
        return nil;
    }
    // 创建实例
    return (UIViewController *)[[class alloc] init];
}

+ (Class)getClassWithURL:(NSString *)routerURL {
    NSArray *info = [routerURL componentsSeparatedByString:kClassNamePostfix];
    // 获取类名前缀
    NSString *classNamePrefix = [[info[0] componentsSeparatedByString:kRouterURLPrefix] lastObject];
    NSString *classNameStr = [NSString stringWithFormat:@"%@%@", classNamePrefix, kClassNamePostfix];
    const char *className = [classNameStr cStringUsingEncoding:NSUTF8StringEncoding];
    // 获取类
    return objc_getClass(className);
}


@end

#pragma mark - NSObject扩展
const void *kRouterParmsKey = "kRouterParmsKey";

@implementation NSObject (RouterParameter)

- (void)setRouterParams:(NSDictionary *)routerParams {
    objc_setAssociatedObject(self, kRouterParmsKey, routerParams, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSDictionary *)routerParams {
    return objc_getAssociatedObject(self, kRouterParmsKey);
}

@end
