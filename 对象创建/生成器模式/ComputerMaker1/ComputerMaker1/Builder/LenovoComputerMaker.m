//
//  LenovoComputerMaker.m
//  ComputerMaker1
//
//  Created by mac on 2018/9/6.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import "LenovoComputerMaker.h"
#import "Computer.h"

@implementation LenovoComputerMaker

- (ComputerMaker *)makeMotherboard {
    self.computer.motherboard = @"联想主板";
    return self;
}

- (ComputerMaker *)makeScreen {
    self.computer.screen = @"联想屏幕";
    return self;
}

- (ComputerMaker *)makeKeyboard {
    self.computer.keyboard = @"联想键盘";
    return self;
}

- (ComputerMaker *)makeTouchpad {
    self.computer.touchpad = @"联想触摸板";
    return self;
}

- (ComputerMaker *)makeLoudSpeaker {
    self.computer.loudspeaker = @"联想扬声器";
    return self;
}

@end
