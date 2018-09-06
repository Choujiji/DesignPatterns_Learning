//
//  Motherboard.h
//  CopyTest
//
//  Created by mac on 2018/9/6.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Motherboard : NSObject <NSCopying>

@property (copy, nonatomic) NSString *CPU;
@property (copy, nonatomic) NSString *GPU;
@property (copy, nonatomic) NSString *memory;
@property (copy, nonatomic) NSString *storage;

@end
