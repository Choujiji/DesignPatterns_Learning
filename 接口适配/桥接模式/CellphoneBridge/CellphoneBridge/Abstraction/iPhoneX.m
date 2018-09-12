//
//  iPhoneX.m
//  CellphoneBridge
//
//  Created by mac on 2018/9/12.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import "iPhoneX.h"

@implementation iPhoneX

- (void)usingFaceIDToUnlock {
    [self.cellphoneFunction openSoftwareWithType:CellphoneSoftwareTypeUnlockSystem];
}

@end
