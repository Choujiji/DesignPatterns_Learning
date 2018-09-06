//
//  ComputerFactory.h
//  ComputerMaker2
//
//  Created by mac on 2018/9/6.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Computer;

typedef NS_ENUM(NSUInteger, ComputerBrand) {
    ComputerBrandApple,
    ComputerBrandLenovo
};

@interface ComputerFactory : NSObject {
    @protected
    Computer *_computer;
}

// 类工厂方法，返回的产品实际上是生产电脑的工厂对象
+ (ComputerFactory *)factoryWithBrand:(ComputerBrand)brand;

// 生产产品并返回，子类覆盖实现
- (NSString *)getMotherboard;
- (NSString *)getScreen;
- (NSString *)getKeyboard;
- (NSString *)getTouchpad;
- (NSString *)getLoudspeaker;

@end
