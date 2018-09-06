//
//  ComputerMaker.h
//  ComputerMaker1
//
//  Created by mac on 2018/9/6.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Computer;

/** 抽象Builder */
@interface ComputerMaker : NSObject

@property (strong, nonatomic, readonly) Computer *computer;

- (ComputerMaker *)makeMotherboard;
- (ComputerMaker *)makeScreen;
- (ComputerMaker *)makeKeyboard;
- (ComputerMaker *)makeTouchpad;
- (ComputerMaker *)makeLoudSpeaker;


@end
