//
//  MyAPPStatisticsUtil.h
//  AdapterSimple
//
//  Created by mac on 2018/9/11.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "APPStatisticsSDKProtocol.h"

@interface MyAPPStatisticsUtil : NSObject

@property (strong, nonatomic) id<APPStatisticsSDKProtocol> delegate;
/** designed initializer（On first calling，you should call this to set adapter type!!!） */
+ (MyAPPStatisticsUtil *)sharedStatisticsWithType:(id<APPStatisticsSDKProtocol>)type;

/** designed initializer */
+ (MyAPPStatisticsUtil *)sharedStatistics;

- (void)startAPP;
- (void)endAPP;

- (void)onEnterPage:(NSString *)page;
- (void)onExitPage:(NSString *)page;

@end
