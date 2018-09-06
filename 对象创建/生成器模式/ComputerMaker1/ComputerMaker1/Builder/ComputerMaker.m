//
//  ComputerMaker.m
//  ComputerMaker1
//
//  Created by mac on 2018/9/6.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import "ComputerMaker.h"
#import "Computer.h"

@implementation ComputerMaker

- (instancetype)init {
    if (self = [super init]) {
        _computer = [[Computer alloc] init];
    }
    return self;
}

- (ComputerMaker *)makeMotherboard {
    self.computer.motherboard = @"基本主板";
    return self;
}

- (ComputerMaker *)makeScreen {
    self.computer.screen = @"基本屏幕";
    return self;
}

- (ComputerMaker *)makeKeyboard {
    self.computer.keyboard = @"基本键盘";
    return self;
}

- (ComputerMaker *)makeTouchpad {
    self.computer.touchpad = @"基本触摸板";
    return self;
}

- (ComputerMaker *)makeLoudSpeaker {
    self.computer.loudspeaker = @"基本扬声器";
    return self;
}

@end
