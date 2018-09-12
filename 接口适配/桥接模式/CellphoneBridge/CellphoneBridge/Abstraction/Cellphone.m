//
//  Cellphone.m
//  CellphoneBridge
//
//  Created by mac on 2018/9/12.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import "Cellphone.h"

@implementation Cellphone

- (void)makePhoneCall {
    [self.cellphoneFunction openSoftwareWithType:CellphoneSoftwareTypeMakingCall];
}

- (void)sendMessage {
    [self.cellphoneFunction openSoftwareWithType:CellphoneSoftwareTypeSendingMessage];
}

- (void)openWeChat {
    [self.cellphoneFunction openSoftwareWithType:CellphoneSoftwareTypeUsingWechat];
}

- (void)playGame {
    [self.cellphoneFunction openSoftwareWithType:CellphoneSoftwareTypePlayingGame];
}

@end
