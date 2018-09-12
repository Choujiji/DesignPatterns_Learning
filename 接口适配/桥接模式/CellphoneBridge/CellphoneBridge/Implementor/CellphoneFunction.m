//
//  CellphoneFunction.m
//  CellphoneBridge
//
//  Created by mac on 2018/9/12.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import "CellphoneFunction.h"

@implementation CellphoneFunction

- (instancetype)init {
    if (self = [super init]) {
        [self loadPhoneSystem];
    }
    return self;
}

- (void)loadPhoneSystem {
    NSLog(@"子类实现~");
}

- (void)openSoftwareWithType:(CellphoneSoftwareType)type {
    NSLog(@"子类实现~");
}
@end
