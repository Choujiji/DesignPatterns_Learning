//
//  CellphoneFunctionProtocol.h
//  CellphoneBridge
//
//  Created by mac on 2018/9/12.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, CellphoneSoftwareType) {
    CellphoneSoftwareTypeMakingCall,
    CellphoneSoftwareTypeSendingMessage,
    CellphoneSoftwareTypeUsingWechat,
    CellphoneSoftwareTypePlayingGame,
    CellphoneSoftwareTypeUnlockSystem
};

@protocol CellphoneFunctionProtocol <NSObject>

- (void)loadPhoneSystem;

- (void)openSoftwareWithType:(CellphoneSoftwareType)type;

@end
