//
//  MobAPPStatisticsSDK.m
//  AdapterSimple
//
//  Created by mac on 2018/9/11.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import "MobAPPStatisticsSDK.h"
#import "MobStatistics.h"


@implementation MobAPPStatisticsSDK


- (void)startAPP {
    [MobStatistics enterAPP];
}

- (void)endAPP {
    [MobStatistics exitAPP];
}

- (void)onEnterPage:(NSString *)page {
    [MobStatistics enterViewWithName:page];
}

- (void)onExitPage:(NSString *)page {
    [MobStatistics leaveViewWithName:page];
}

@end
