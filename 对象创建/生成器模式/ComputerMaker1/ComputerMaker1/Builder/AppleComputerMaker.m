//
//  AppleComputerMaker.m
//  ComputerMaker1
//
//  Created by mac on 2018/9/6.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import "AppleComputerMaker.h"
#import "Computer.h"

@implementation AppleComputerMaker

- (ComputerMaker *)makeMotherboard {
    self.computer.motherboard = @"苹果主板";
    return self;
}

- (ComputerMaker *)makeScreen {
    self.computer.screen = @"苹果屏幕";
    return self;
}

- (ComputerMaker *)makeKeyboard {
    self.computer.keyboard = @"苹果键盘";
    return self;
}

- (ComputerMaker *)makeTouchpad {
    self.computer.touchpad = @"苹果触摸板";
    return self;
}

- (ComputerMaker *)makeLoudSpeaker {
    self.computer.loudspeaker = @"苹果扬声器";
    return self;
}

@end
