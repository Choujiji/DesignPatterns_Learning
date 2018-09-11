//
//  UmengAPPStatisticsSDK.m
//  AdapterSimple
//
//  Created by mac on 2018/9/11.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import "UmengAPPStatisticsSDK.h"
#import "UMengStatistics.h"

@implementation UmengAPPStatisticsSDK

- (void)startAPP {
    [UMengStatistics startAPP];
}

- (void)endAPP {
    [UMengStatistics endAPP];
}

- (void)onEnterPage:(NSString *)page {
    [UMengStatistics enterPageNamed:page];
}

- (void)onExitPage:(NSString *)page {
    [UMengStatistics leavePageNamed:page];
}

@end
