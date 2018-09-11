//
//  APPStatisticsSDKProtocol.h
//  AdapterSimple
//
//  Created by mac on 2018/9/11.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol APPStatisticsSDKProtocol <NSObject>

- (void)startAPP;
- (void)endAPP;

- (void)onEnterPage:(NSString *)page;
- (void)onExitPage:(NSString *)page;

@end
