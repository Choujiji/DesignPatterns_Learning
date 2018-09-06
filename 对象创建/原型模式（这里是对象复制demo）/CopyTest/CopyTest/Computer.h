//
//  Computer.h
//  CopyTest
//
//  Created by mac on 2018/9/6.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Motherboard;
@class OperationSystem;

@interface Computer : NSObject <NSCopying> {
    /** 支持的操作系统（数组） */
    NSMutableArray *_enableOS;
}

@property (copy, nonatomic) Motherboard *motherboard;
@property (copy, nonatomic) NSString *screen;
@property (copy, nonatomic) NSString *keyboard;
@property (copy, nonatomic) NSString *touchpad;
@property (copy, nonatomic) NSString *loudspeaker;
@property (assign, nonatomic, readonly) NSUInteger enableOSCount;

- (void)addOperationSystem:(OperationSystem *)OS;
- (void)removeOperationSystem:(OperationSystem *)OS;
@end
