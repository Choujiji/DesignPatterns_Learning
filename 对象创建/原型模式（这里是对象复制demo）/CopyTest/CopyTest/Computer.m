//
//  Computer.m
//  CopyTest
//
//  Created by mac on 2018/9/6.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import "Computer.h"
#import "OperationSystem.h"
#import "Motherboard.h"

@interface Computer ()

@property (assign, nonatomic) NSUInteger enableOSCount;

@end

@implementation Computer


- (nonnull id)copyWithZone:(nullable NSZone *)zone {
    Computer *computerCopy = [[[self class] allocWithZone:zone] init];
    for (OperationSystem *item in _enableOS) {
        OperationSystem *OSCopy = [item copy];
        [computerCopy addOperationSystem:OSCopy];
    }
    computerCopy.motherboard = [self.motherboard copy];
    computerCopy.screen = self.screen;
    computerCopy.touchpad = self.touchpad;
    computerCopy.loudspeaker = self.loudspeaker;
    computerCopy.keyboard = self.keyboard;
    computerCopy.enableOSCount = self.enableOSCount;
    
    return computerCopy;
}

- (void)addOperationSystem:(OperationSystem *)OS {
    if (!_enableOS) {
        _enableOS = [[NSMutableArray alloc] initWithCapacity:5];
    }
    if ([_enableOS containsObject:OS]) {
        return;
    }
    [_enableOS addObject:OS];
    self.enableOSCount = _enableOS.count;
}

- (void)removeOperationSystem:(OperationSystem *)OS {
    if (!_enableOS) {
        _enableOS = [[NSMutableArray alloc] initWithCapacity:5];
    }
    if (![_enableOS containsObject:OS]) {
        return;
    }
    [_enableOS removeObject:OS];
    self.enableOSCount = _enableOS.count;
}

@end


