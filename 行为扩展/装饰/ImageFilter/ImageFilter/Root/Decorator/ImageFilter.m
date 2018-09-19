//
//  ImageFilter.m
//  ImageFilter
//
//  Created by mac on 2018/9/19.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import "ImageFilter.h"

@implementation ImageFilter

- (instancetype)initWithComponent:(id<ImageComponent>)component {
    if (self = [super init]) {
        _component = component;
    }
    return self;
}

- (void)apply {
    // TODO - 子类装饰器实现
}

- (id)forwardingTargetForSelector:(SEL)aSelector {
    // 收到根协议的方法调用时，先检查调用扩展的方法
    if ([NSStringFromSelector(aSelector) hasPrefix:@"draw"]) {
        [self apply];
    }
    // 转发给component实例去响应
    return self.component;
}

@end
