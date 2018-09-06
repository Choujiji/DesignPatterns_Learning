//
//  LenovoComputerFactory.m
//  ComputerMaker2
//
//  Created by mac on 2018/9/6.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import "LenovoComputerFactory.h"
#import "Computer.h"

@implementation LenovoComputerFactory

- (instancetype)init {
    if (self = [super init]) {
        _computer.motherboard = @"联想主板";
        _computer.screen = @"联想显示屏";
        _computer.keyboard = @"联想键盘";
        _computer.touchpad = @"联想触摸板";
        _computer.loudspeaker = @"联想音箱";
    }
    return self;
}

- (NSString *)getMotherboard {
    // 这里只是示例，实际项目中可以返回自定义类的对象，对外则隐藏了类名
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
