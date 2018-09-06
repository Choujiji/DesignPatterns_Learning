//
//  OperationSystem.m
//  CopyTest
//
//  Created by mac on 2018/9/6.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import "OperationSystem.h"

@implementation OperationSystem

- (id)copyWithZone:(NSZone *)zone {
    OperationSystem *OSCopy = [[[self class] allocWithZone:zone] init];
    OSCopy.OSName = self.OSName;
    OSCopy.OSVersion = self.OSVersion;
    return OSCopy;
}

@end
