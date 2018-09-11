//
//  UMengStatistics.h
//  AdapterSimple
//
//  Created by mac on 2018/9/11.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UMengStatistics : NSObject

+ (void)startAPP;
+ (void)endAPP;
+ (void)enterPageNamed:(NSString *)name;
+ (void)leavePageNamed:(NSString *)name;

@end
