//
//  SubCommand.m
//  Adapter
//
//  Created by mac on 2018/9/11.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import "SubCommand.h"

@implementation SubCommand

- (void)execute {
    // Client通过Adapter调用方法（不知道真正的原始类）

    CGFloat red = 0;
    CGFloat green = 0;
    CGFloat blue = 0;
    
    // 调用Adapter的协议方法获取数据（获取adapter处理的数据结果）
    [self.adapter command:self getColorWithRed:&red green:&green blue:&blue];
    
    // 合成并保存结果
    UIColor *color = [UIColor colorWithRed:red green:green blue:blue alpha:1];
    self.currentColor = color;
    
    // 调用协议方法
    [self.adapter command:self didUpdateColor:color];
}

@end
