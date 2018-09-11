//
//  MobStatistics.m
//  AdapterSimple
//
//  Created by mac on 2018/9/11.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import "MobStatistics.h"

@implementation MobStatistics

+ (void)enterAPP {
    NSLog(@"Mob - enterAPP");
}

+ (void)exitAPP {
    NSLog(@"Mob - exitAPP");
}

+ (void)enterViewWithName:(NSString *)name {
    NSLog(@"Mob - enterViewWithName：%@", name);
}

+ (void)leaveViewWithName:(NSString *)name {
    NSLog(@"Mob - leaveViewWithName：%@", name);
}

@end
