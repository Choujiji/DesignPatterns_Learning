//
//  ComputerFactory.m
//  ComputerMaker2
//
//  Created by mac on 2018/9/6.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import "ComputerFactory.h"
#import "Computer.h"
#import "AppleComputerFactory.h"
#import "LenovoComputerFactory.h"

@implementation ComputerFactory

+ (ComputerFactory *)factoryWithBrand:(ComputerBrand)brand {
    ComputerFactory *factory = nil;
    // 根据类型，创建对应的产品工厂
    switch (brand) {
        case ComputerBrandApple:
            factory = [[AppleComputerFactory alloc] init];
            break;
        case ComputerBrandLenovo:
            factory = [[LenovoComputerFactory alloc] init];
            break;
    }
    return factory;
}

- (instancetype)init {
    if (self = [super init]) {
        _computer = [[Computer alloc] init];
    }
    return self;
}

- (NSString *)getMotherboard {
    return @"主板";
}

- (NSString *)getScreen {
    return @"显示屏";
}

- (NSString *)getKeyboard {
    return @"键盘";
}

- (NSString *)getTouchpad {
    return @"触控板";
}

- (NSString *)getLoudspeaker {
    return @"音箱";
}

@end
