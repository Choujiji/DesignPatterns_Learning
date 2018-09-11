//
//  UMengStatistics.m
//  AdapterSimple
//
//  Created by mac on 2018/9/11.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import "UMengStatistics.h"

@implementation UMengStatistics

+ (void)startAPP {
    NSLog(@"Umeng - startAPP");
}

+ (void)endAPP {
    NSLog(@"Umeng - endAPP");
}

+ (void)enterPageNamed:(NSString *)name {
    NSLog(@"Umeng - enterPageNamed：%@", name);
}

+ (void)leavePageNamed:(NSString *)name {
    NSLog(@"Umeng - leavePageNamed：%@", name);
}

@end
