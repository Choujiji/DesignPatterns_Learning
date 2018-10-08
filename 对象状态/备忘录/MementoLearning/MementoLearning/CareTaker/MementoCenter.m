//
//  MementoCenter.m
//  MementoLearning
//
//  Created by mac on 2018/10/8.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import "MementoCenter.h"

@interface MementoCenter ()


/**
 保存数据容器（这里只是存储在内存中）
 */
@property (strong, nonatomic) NSDictionary *mementoCenterInfo;

@end

@implementation MementoCenter

- (instancetype)init {
    if (self = [super init]) {
        _mementoCenterInfo = [NSDictionary dictionary];
    }
    return self;
}

- (void)saveMementoWithObj:(id<MementoProtocol>)object
                       key:(NSString *)key {
    if (![object respondsToSelector:@selector(currentState)]) {
        return;
    }
    // 生成Memento
    id savedInfo = [object currentState];
    // 保存
    NSMutableDictionary *centerInfo = [self.mementoCenterInfo mutableCopy];
    [centerInfo setValue:savedInfo forKey:key];
    self.mementoCenterInfo = centerInfo;
}

- (id)mementoObjectWithKey:(NSString *)key {
    // 读取Memento
    return self.mementoCenterInfo[key];
}

@end
