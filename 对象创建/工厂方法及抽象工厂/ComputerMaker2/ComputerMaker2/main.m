//
//  main.m
//  ComputerMaker2
//
//  Created by mac on 2018/9/6.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ComputerFactory.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 获取产品工厂
        ComputerFactory *factory = [ComputerFactory factoryWithBrand:ComputerBrandApple];
        // 获取产品（实际项目中，每个产品可能都是自己的类对象，Client端在外部则无需引入，达到了解耦的目的）
        NSString *motherboard = [factory getMotherboard];
        NSString *screen = [factory getScreen];
        NSString *keyboard = [factory getKeyboard];
        NSString *touchpad = [factory getTouchpad];
        NSString *loudspeaker = [factory getLoudspeaker];
        NSLog(@"电脑：\n主板：%@\n屏幕：%@\n键盘：%@\n触控板：%@\n音箱：%@\n", 
              motherboard,
              screen,
              keyboard,
              touchpad,
              loudspeaker
              );
    }
    return 0;
}
