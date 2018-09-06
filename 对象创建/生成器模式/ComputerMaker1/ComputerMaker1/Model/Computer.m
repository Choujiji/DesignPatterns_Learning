//
//  Computer.m
//  ComputerMaker1
//
//  Created by mac on 2018/9/6.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import "Computer.h"

@implementation Computer

- (NSString *)description {
    return [NSString stringWithFormat:@"主板：%@\n显示器：%@\n键盘：%@\n触控板：%@\n扬声器：%@\n",
            self.motherboard,
            self.screen,
            self.keyboard,
            self.touchpad,
            self.loudspeaker
            ];
}

@end
