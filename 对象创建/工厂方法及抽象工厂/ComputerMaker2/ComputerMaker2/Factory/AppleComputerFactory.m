//
//  AppleComputerFactory.m
//  ComputerMaker2
//
//  Created by mac on 2018/9/6.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import "AppleComputerFactory.h"
#import "Computer.h"

@implementation AppleComputerFactory

- (instancetype)init {
    if (self = [super init]) {
        _computer.motherboard = @"苹果主板";
        _computer.screen = @"苹果显示屏";
        _computer.keyboard = @"苹果键盘";
        _computer.touchpad = @"苹果触摸板";
        _computer.loudspeaker = @"苹果音箱";
    }
    return self;
}

- (NSString *)getMotherboard {
    // 这里只是示例
    return _computer.motherboard;
}

- (NSString *)getScreen {
    return _computer.screen;
}

- (NSString *)getKeyboard {
    return _computer.keyboard;
}

- (NSString *)getTouchpad {
    return _computer.touchpad;
}

- (NSString *)getLoudspeaker {
    return _computer.loudspeaker;
}
@end
