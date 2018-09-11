//
//  MobStatistics.h
//  AdapterSimple
//
//  Created by mac on 2018/9/11.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MobStatistics : NSObject

+ (void)enterAPP;
+ (void)exitAPP;
+ (void)enterViewWithName:(NSString *)name;
+ (void)leaveViewWithName:(NSString *)name;

@end
