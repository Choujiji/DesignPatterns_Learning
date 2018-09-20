//
//  CarEngineManager.m
//  CarProduction
//
//  Created by mac on 2018/9/20.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import "CarEngineManager.h"

@implementation CarEngineManager

- (void)setupEngine {
    NSLog(@"安装v8发动机~");
}

- (void)production {
    [super production];
    [self setupEngine];
}

@end
