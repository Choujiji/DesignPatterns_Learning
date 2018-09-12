//
//  iPhoneFunction.m
//  CellphoneBridge
//
//  Created by mac on 2018/9/12.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import "iPhoneFunction.h"

@implementation iPhoneFunction

- (void)loadPhoneSystem {
    _system = @"iOS";
}

- (void)openSoftwareWithType:(CellphoneSoftwareType)type {
    switch (type) {
        case CellphoneSoftwareTypeMakingCall:
            NSLog(@"%@ 打开电话程序~", _system);
            break;
        case CellphoneSoftwareTypeSendingMessage:
            NSLog(@"%@ 打开iMessage~", _system);
            break;
        case CellphoneSoftwareTypeUsingWechat:
            NSLog(@"打开%@版微信~", _system);
            break;
        case CellphoneSoftwareTypePlayingGame:
            NSLog(@"打开“绝地求生”%@客户端~", _system);
            break;
        case CellphoneSoftwareTypeUnlockSystem:
            NSLog(@"%@ 解锁系统...", _system);
            break;
        default:
            [super openSoftwareWithType:type];
            break;
    }
}

@end
