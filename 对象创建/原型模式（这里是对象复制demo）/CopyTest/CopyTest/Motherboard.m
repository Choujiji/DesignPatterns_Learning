//
//  Motherboard.m
//  CopyTest
//
//  Created by mac on 2018/9/6.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import "Motherboard.h"

@implementation Motherboard

- (nonnull id)copyWithZone:(NSZone *)zone {
    Motherboard *motherboardCopy = [[[self class] allocWithZone:zone] init];
    motherboardCopy.CPU = self.CPU;
    motherboardCopy.GPU = self.GPU;
    motherboardCopy.memory = self.memory;
    motherboardCopy.storage = self.storage;
    return motherboardCopy;
}

@end
