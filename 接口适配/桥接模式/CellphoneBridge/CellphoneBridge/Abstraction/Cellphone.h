//
//  Cellphone.h
//  CellphoneBridge
//
//  Created by mac on 2018/9/12.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CellphoneFunctionProtocol.h"

@interface Cellphone : NSObject

@property (strong, nonatomic) id<CellphoneFunctionProtocol> cellphoneFunction;

- (void)makePhoneCall;

- (void)sendMessage;

- (void)openWeChat;

- (void)playGame;

@end
