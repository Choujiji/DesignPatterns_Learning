//
//  OperationSystem.h
//  CopyTest
//
//  Created by mac on 2018/9/6.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface OperationSystem : NSObject <NSCopying>

@property (copy, nonatomic) NSString *OSName;
@property (copy, nonatomic) NSString *OSVersion;

@end
